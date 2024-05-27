<?php
include_once "db_conn.php";
if ($_SESSION['user_type'] != 'A') {
    header("location:" . $_SERVER['HTTP_REFERER']);
    header("location:landing_page.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personal Data Sheet</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="icons/bootstrap-icons.css">
    <link rel="stylesheet" href="hris_style.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="local_style.css">
    <script src="js/bootstrap.js"></script>

    <style>
        /* educational background */
        nav {
            background-color: #283872;
            width: 100%;
            box-shadow: 0px 2px 5px black;
        }

        nav p {
            text-decoration: none;
            color: #E4E9FF;
        }

        nav p:hover {
            color: #FFD644;
        }

        .checkbox-container {
            display: flex;
            align-items: center;
        }

        .small-font {
            font-size: 13px;
        }

        .delete-row-button:active {
            outline: none;
            border: none;
        }

        .add-row-text:active {
            outline: none;
            border: none;
            color: blue;
        }

        .add-row-text {
            margin-top: -26px;
        }

        /* --------------- */
        hr {
            color: antiquewhite;
            margin: 2em;
        }

        .ref-prepend {
            width: 200px;
        }
    </style>
</head>

<body style="background-color: #80A1F5">
    <div class="container-fluid">
        <div class="row vh-100">

            <!-- SIDEBAR -->
            <?php
            include_once 'sidebar1.php';
            ?>

            <!-- CONTENT -->
            <div class="col-10 pb-5">
                <!-- PROFILE -->

                <?php
                include_once 'profile.php';
                ?>

                <!-- FORM -->

                <form action="pds_new.php" method="post" enctype="multipart/form-data">
                    <div id="carousel" class="carousel slide" data-bs-ride="false" data-pause="hover">
                        <nav class="navbar sticky-top" id="navbar">
                            <div class="container">
                                <div class="col mx-4">
                                    <p class="carousel-nav active" aria-current="true" aria-label="Personal Information"
                                        style="text-align:center; cursor: pointer;" data-index="0">
                                        Personal Information
                                    </p>
                                </div>
                                <div class="col mx-4">
                                    <p class="carousel-nav" aria-label="Family Background"
                                        style="text-align:center; cursor: pointer;" data-index="1">
                                        Family Background
                                    </p>
                                </div>
                                <div class="col mx-4">
                                    <p class="carousel-nav" aria-label="Educational Background"
                                        style="text-align:center; cursor: pointer;" data-index="2">
                                        Educational Background
                                    </p>
                                </div>
                                <div class="col mx-4">
                                    <p class="carousel-nav" aria-label="Civil Service Eligibility"
                                        style="text-align:center; cursor: pointer;" data-index="3">
                                        Civil Service Eligibility
                                    </p>
                                </div>
                                <div class="col mx-4">
                                    <p class="carousel-nav" aria-label="Work Experience"
                                        style="text-align:center; cursor: pointer;" data-index="4">
                                        Work Experience
                                    </p>
                                </div>
                                <div class="col mx-4">
                                    <p class="carousel-nav" aria-label="Voluntary Work"
                                        style="text-align:center; cursor: pointer;" data-index="5">
                                        Voluntary Work
                                    </p>
                                </div>
                                <div class="col mx-4">
                                    <p class="carousel-nav" aria-label="Learning & Development"
                                        style="text-align:center; cursor: pointer;" data-index="6">
                                        Learning & Development
                                    </p>
                                </div>
                                <div class="col mx-4">
                                    <p class="carousel-nav" aria-label="Other Information"
                                        style="text-align:center; cursor: pointer;" data-index="7">
                                        Other Information
                                    </p>
                                </div>
                                <div class="col mx-4">
                                    <p class="carousel-nav" aria-label="References"
                                        style="text-align:center; cursor: pointer;" data-index="8">
                                        References
                                    </p>
                                </div>
                            </div>
                        </nav>
                        <div class="carousel slide" id="carouselExample">
                            <div class="carousel-inner">
                                <!-- PERSONAL INFORMATION -->
                                <div class="carousel-item active" id="personal_information">
                                    <?php include_once "pds_sections/personal_info.php"; ?>
                                </div>
                                <!-- FAMILY BACKGROUND -->
                                <div class="carousel-item" id="family_background">
                                    <?php include_once "pds_sections/fam_bg.php"; ?>
                                </div>
                                <!-- EDUCATIONAL BACKGROUND -->
                                <div class="carousel-item" id="educational_background">
                                    <?php include_once "pds_sections/educational_bg.php"; ?>
                                </div>
                                <!-- CIVIL SERVICE ELIGIBILITY -->
                                <div class="carousel-item" id="civil_service_eligibility">
                                    <?php include_once "pds_sections/cs_eligibility.php"; ?>
                                </div>
                                <!-- WORK EXPERIENCE -->
                                <div class="carousel-item" id="work_experience">
                                    <?php include_once "pds_sections/work_exp.php"; ?>
                                </div>
                                <!-- VOLUNTARY WORK -->
                                <div class="carousel-item" id="voluntary_work">
                                    <?php include_once "pds_sections/voluntary_work.php"; ?>
                                </div>
                                <!-- LEARNING & DEVELOPMENT -->
                                <div class="carousel-item" id="learning_and_development">
                                    <?php include_once "pds_sections/lnd.php"; ?>
                                </div>
                                <!-- OTHER INFORMATION -->
                                <div class="carousel-item" id="other_information">
                                    <?php include_once "pds_sections/other_info.php"; ?>
                                </div>
                                <!-- REFERENCES -->
                                <div class="carousel-item" id="references">
                                    <?php include_once "pds_sections/ref.php"; ?>
                                </div>
                            </div>
                        </div>


                    </div>
                </form>

            </div>
        </div>
    </div>
    <script>
        //====================== Active Slide Color ==================== 
        document.addEventListener('DOMContentLoaded', function () {
            const navbar = document.getElementById('navbar');
            const carousel = document.getElementById('carousel');
            const navItems = navbar.querySelectorAll('.carousel-nav');

            function updateNavbarColor(activeIndex) {
                navItems.forEach((item, index) => {
                    if (index === activeIndex) {
                        item.style.color = '#FFD644';
                    } else {
                        item.style.color = '';
                    }
                });
            }

            // Initially set the background for the first item
            updateNavbarColor(0);

            // Add event listener for the carousel sliding event
            carousel.addEventListener('slide.bs.carousel', function (event) {
                const activeIndex = event.to;
                updateNavbarColor(activeIndex);
            });
        });

        //============= Carousel Navigation ===========================
        document.addEventListener('DOMContentLoaded', function () {
            const sections = [
                'personal_information',
                'family_background',
                'educational_background',
                'civil_service_eligibility',
                'work_experience',
                'voluntary_work',
                'learning_and_development',
                'other_information',
                'references'
                // Add other section ids here
            ];

            // Function to check if required inputs are filled
            function validateSection(sectionId) {
                const section = document.getElementById(sectionId);
                const inputs = section.querySelectorAll('input[required], select[required]'); // Adjust according to your input types
                for (const input of inputs) {
                    if (!input.value.trim()) {
                        return false;
                    }
                }
                return true;
            }


            // Event listener for carousel navigation
            document.querySelectorAll('.carousel-nav').forEach((navItem, index) => {
                navItem.addEventListener('click', function (event) {
                    for (let i = 0; i <= index; i++) {
                        if (!validateSection(sections[i])) {
                            event.preventDefault();
                            alert('Please fill out all required fields in the ' + sections[i].replace(/_/g, ' ') + ' section before proceeding.');
                            return false;
                        }
                    }

                    // Only proceed if all sections up to the current index are valid
                    const carousel = document.getElementById('carousel');
                    const carouselInstance = bootstrap.Carousel.getInstance(carousel);
                    if (!carouselInstance) {
                        new bootstrap.Carousel(carousel);
                    }
                    carouselInstance.to(index);
                });
            });
        });
    </script>

</body>

</html>