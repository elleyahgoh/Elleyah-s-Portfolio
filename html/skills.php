<div class="mt-5rem f-white">
    <div class="py-2 f-32 skills-title">
        <p class="text-center mx-auto mb-0 font-weight-bold uppercase">Skills</p>
    </div>

    <div class="skills-content">
        <div class="container pt-5 mb-3 skills-wrapper">
            <div class="row">

                <?php
                    require '../php/inc/db.inc.php';
                    
                    $query = "SELECT * FROM skills";
                    $result = mysqli_query($connect, $query);

                    if(!$result) {
                        die();
                    }

                    else {
                        $skill_array = array();

                        while($rows = mysqli_fetch_assoc($result)) {
                            $skill_array[] = $rows;
                        }

                        $i = 0;

                        foreach($skill_array as $skill) {
                            echo "<div class='col-md-6 mb-5 px-5'><div class='f-24 d-flex'>";
                            echo "<p class='mb-1'>" . $skill['name'] . "</p>";
                            echo "<p class='mb-1 ml-auto'>" . $skill['perc'] . "%</p></div>";

                            echo 
                            "<style>
                                #skill-" . $i . ".on-scroll::before {
                                    width: 0;
                                    transition: transform 6s .25s cubic-bezier(0.175, 0.885, 0.32, 1.275), width 1s .25s ease-out;
                                    will-change: transform, width;
                                }

                                #skill-" . $i . ".on-scroll.is-visible::before {
                                    width:" . $skill['perc'] ."%;
                                }
                            </style>";

                            echo "<div class='position-relative skill on-scroll' id='skill-" . $i . "'></div></div>";
                            $i++;
                        }
                    }
                ?>
            </div>
        </div>

        <p class="f-24 font-italic text-center">with exposure to...</p>

        <div class="pb-5 d-flex f-20 font-weight-light flex-wrap mx-auto justify-content-around exposures">

            <?php 
                require "../php/inc/db.inc.php";
                $query = "SELECT * FROM exposures";
                $result = mysqli_query($connect, $query);

                if(!$result) {
                    die();
                }

                else {
                    $exposure_array = array();

                    while($rows = mysqli_fetch_assoc($result)) {
                        $exposure_array[] = $rows;
                    }

                    foreach($exposure_array as $exposure) {
                        echo "<p class='exposure on-scroll text-center mx-3'>" . $exposure['name'] . "</p>";
                    }
                }
            ?>
        </div>
    </div>

</div>