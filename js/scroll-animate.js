var scroll = window.requestAnimationFrame || function (callback) { window.setTimeout(callback, 1000 / 60) };
var elements = document.querySelectorAll('.on-scroll');

function loop() {
    elements.forEach(function (element) {
        var cards = document.querySelectorAll('.project-card');
        var cardIn = false;
        
        if (isElementInViewport(element)) {
            if (element.classList.contains('project-card')) {
                var cards = document.querySelectorAll('.project-card');
                cards.forEach(function (card) {
                    if (!card.classList.contains('is-visible'))
                        card.classList.add('is-visible');
                });
            }

            else if (!element.classList.contains('project-card'))
                element.classList.add('is-visible');
        }

        else {
            cards.forEach(function (card) {
                if (isElementInViewport(card)) {
                    cardIn = true;
                }
            });

            if (!cardIn) {
                cards.forEach(function (card) {
                    if (card.classList.contains('is-visible'))
                        card.classList.remove('is-visible');
                });
            }

            else if (!element.classList.contains('project-card')) {
                element.classList.remove('is-visible');
            }
        }
    });

    scroll(loop);
}

loop();

function isElementInViewport(element) {
    if (typeof (jQuery) === "function" && element instanceof jQuery) {
        element = element[0];
    }

    var rect = element.getBoundingClientRect();

    return (
        (rect.top <= 0 && rect.bottom >= 0) ||
        (rect.bottom >= (window.innerHeight || document.documentElement.clientHeight) && rect.top <= (window.innerHeight || document.documentElement.clientHeight)) ||
        (rect.top >= 0 && rect.bottom <= (window.innerHeight || document.documentElement.clientHeight))
    );
}
