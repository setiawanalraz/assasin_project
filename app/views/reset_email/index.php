<head>
    <title><?= $data['title']; ?></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="../assets/css/login_style.css">
</head>

<body style="background: #FFEBC5;">
    <div class="gambar2">
        <img src="../assets/img/Vector-1.png" alt="">
    </div>
    <div class="gambar3">
        <img src="../assets/img/Vector-2.png" alt="">
    </div>
    <div class="logo">
        <img src="../assets/img/Jatis Mobile.png" alt="">
    </div>
    <section class="Form my-4 mx-2">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-5 col-md-6">
                    <div class="gambar text-center align-items-center">
                        <h2 class="fw-bold mt-5 pt-5 pb-3" style="color: #0E2E6E;">Create New Password</h2>
                        <div class="pt-5">
                            <img src="../assets/img/Password.png" alt="" style="width: 75%; ">
                        </div>
                        <h4 class="fw-bold px-5 pt-5" style="color: #0E2E6E; ">Enter The Email Associated With Your Account And We’ll Send An Email With Instruction To <a style="color: #F7FFC5;">Reset</a> Your <a style="color: #F7FFC5;">Password</a></h4>
                    </div>
                </div>
                <div class="col-lg-7 col-md-6 mt-5 px-5 pt-5">
                    <div class="col-sm-12">
                        <?php
                        Flasher::Message();
                        ?>
                    </div>
                    <h1 class="fw-bold py-3 text-center" style="color: #0E2E6E;">Reset Password</h1>
                    <form action="<?= base_url; ?>/resetEmail/verificationEmail" method="post">
                        <div class="form-row mt-3">
                            <div class="col-lg-12 col-md-6 mt-3">
                                <h5 class="form-label fw-bold mb-3" style="color: #0E2E6E;">Email</h5>
                                <input type="text" class="kotak form-control" placeholder="" name="email">
                                <p class="mt-1" id="info">Email Sent <i class="bi bi-check-lg"></i> </p>
                            </div>
                        </div>
                        <div class="form-row text-center">
                            <div class="col-lg-12 py-5 my-5">
                                <button type="submit" class="btn tombol fw-bold" id="btnSend">Send</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    
    <script>
        let tombol = document.querySelector('button');
        let x = document.getElementById("info")
        tombol.addEventListener('click', () => {
            tombol.innerText = "Sending to email...";
            tombol.style.width='200px';
            // x.style.display = "none";
            setTimeout(() => {
                tombol.innerText = "Resend";
                tombol.style.width='150px';
                x.style.display = "block";
            }, 2000);
        })
    </script>
