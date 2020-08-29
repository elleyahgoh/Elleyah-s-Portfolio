<div class="pt-5 bg-f8f8f8">
    <p class="mb-4 f-32 f-4a4a4a text-center mx-auto mb-0 font-weight-bold uppercase">Finished Projects</p>

    <div class="project-container">
        <div class="row">
            <!-- <div class="mb-5 col-lg-6">
                <div class="position-relative mb-4 slideshow">
                    <div class="slides">
                        <div>
                            <div class="slide d-flex align-items-center justify-content-center">
                                <img style="width: 90%; height: auto; object-fit: contain;" src="../img/fyp-1.png">
                            </div>
                        </div>

                        <div>
                            <div class="slide d-flex align-items-center justify-content-center">
                                <img style="width: 90%; height: auto; object-fit: contain;" src="../img/fyp-1.png">
                            </div>
                        </div>
                    </div>
                </div>

                <p class="f-24 mb-0 uppercase">3D Shapes Blending: A development</p>
                <p class="font-weight-bold font-italic">Featuring: OpenGL, C++</p>
                
                <div class="project-desc font-weight-light text-justify">
                    <p>A program that performs simple 3D shapes blending by retrieving two 3D models segmented into components from end user input, allowing the user to choose which component is to be swapped, making calculations to perform the right transformation required before adjusting the selected components with one another to obtain a newly crafted model.</p>

                    <p>The project seeks to inspire designers and 3D modellers with new model design ideas, encouraging them to continue their line of work by following the models provided by the program.</p>

                    <p><span class="font-weight-normal">Available on: </span><a href="https://github.com/elleyahgoh/3D-Shapes-Blending">GitHub</a></p>
                </div>
            </div> -->

            <?php
                require '../php/inc/db.inc.php';

                $query = "SELECT * FROM projects";
                $result = mysqli_query($connect, $query);

                if(!$result) {
                    die();
                }

                else {
                    //Retrieve all projects
                    $project_array = array();
                    while($rows = mysqli_fetch_assoc($result)) {
                        $project_array[] = $rows;
                    }

                    $project_no = 0;

                    foreach($project_array as $project_item) {
                        $id = $project_item['id'];
                        $project_no++;

                        echo "<style>#project-card-" . $project_no . " { transition-delay: calc(.5s * (" . $project_no . ")) }</style>";

                        // Retrieve current project's images
                        $query = "SELECT * FROM images WHERE project_id = $id";
                        $result = mysqli_query($connect, $query);

                        if(!$result) {
                            die();
                        }

                        else {
                            $image_array = array();

                            while($rows = mysqli_fetch_assoc($result)) {
                                $image_array[] = $rows;
                            }
                        }

                        // Retrieve current project's URLs
                        $query = "SELECT * FROM links WHERE project_id = $id";
                        $result = mysqli_query($connect, $query);

                        if(!$result) {
                            die();
                        }

                        else {
                            $link_array = array();

                            while($rows = mysqli_fetch_assoc($result)) {
                                $link_array[] = $rows;
                            }
                        }
                        
                        echo "<div class='mb-5 col-lg-6 project-card on-scroll' id='project-card-" . $project_no . "'><div class='position-relative mb-4 slideshow'><div class='slides'>";
                        
                        foreach($image_array as $image) {
                            echo "<div><div class='slide d-flex align-items-center justify-content-center'><img src='" . $image['url'] . "'></div></div>";
                        }

                        echo "</div></div>";

                        echo "<p class='f-24 mb-0 uppercase'>" . $project_item['title'] . "</p>";

                        if($project_item['company_work'] == 1) {
                            echo "<p class='f-14 font-weight-light mb-0'>(company assigned work)</p>";
                        }

                        echo "<p class='font-weight-bold font-italic mb-0'>Featuring: " . $project_item['featuring'] . "</p>";

                        echo "<div class='project-desc font-weight-light text-justify'>" . $project_item['description'] . "<p><span class='font-weight-normal'>Available on: </span>";

                        if(sizeof($link_array) > 0) {
                            for($i = 0; $i < sizeof($link_array) - 1; $i++) {
                                echo "<a href='" . $link_array[$i]['url'] . "'>" . $link_array[$i]['title'] . "</a>, ";
                            }
    
                            echo "<a href='" . $link_array[sizeof($link_array) - 1]['url'] . "'>" . $link_array[sizeof($link_array) - 1]['title'] . "</a>";
                        }

                        echo "</div></div>";
                    }
                }
            ?>
        </div>
    </div>
</div>

