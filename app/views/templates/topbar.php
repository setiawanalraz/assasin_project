<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg bg-transparent shadow-sm mb-3">
        <div class="container-fluid">
            <a class="navbar-brand mx-4" href="#">
                <img src="../assets/img/JatisMobileLogo.png" alt="LogoJatis" class="img-logo" width="69">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item mx-4">
                        <a class="nav-link active" aria-current="page" href="<?= base_url; ?>/home">Upload</a>
                    </li>

                    <!-- <li class="nav-item mx-4">
                        <a class="nav-link" aria-current="page" href="<?= base_url; ?>/conhitapi/show_json_data">JSON Data</a>
                    </li> -->

                    <li class="nav-item dropdown bg-transparent mx-4">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            My Profile <img src="../assets/img/ImageProfile.png" class="img rounded-circle" alt="" width="55">
                        </a>

                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Edit Profile</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="<?= base_url; ?>/logout">Logout <img src="../assets/img/Logout.png" alt="" class="mx-3" width="26"></a>
                            </li>
                        </ul>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Navbar -->