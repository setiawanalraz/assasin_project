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
                            <img src="../assets/img/Pass2.png" alt="" style="width: 75%; ">
                        </div>
                        <h4 class="fw-bold px-5 pt-5" style="color: #0E2E6E; ">Your New Password Must Be <a style="color: #F7FFC5;">Diffferent</a> From Previous Used Password</h4>
                    </div>
                </div>
                <div class="col-lg-7 col-md-6 mt-5 px-5">
                    <h1 class="fw-bold py-3 text-center" style="color: #0E2E6E; position: relative;">Reset Password</h1>
                    <form>
                        <div class="form-row mt-3">
                            <div class="form-row mt-3">
                                <div class="col-lg-12 col-md-6 mt-3">
                                    <h5 class="form-label fw-bold mb-3" style="color: #0E2E6E;">Username</h5>
                                    <input type="text" class="kotak form-control" placeholder="">
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-6 mt-3">
                                <h5 class="form-label fw-bold mb-3" style="color: #0E2E6E;">New Password</h5>
                                <div class="inputIcon d-flex">
                                    <input type="password" class="kotak form-control" placeholder="" id="input">
                                    <span class="reveal d-flex" onclick="password()">
                                        <h2><i id="hide" class="bi bi-eye"></i></h2>
                                        <h2><i id="hide2" class="bi bi-eye-slash"></i></h2>
                                    </span>
                                </div>
                                <p class="mt-1" style="margin-bottom: 0; font-size: 12px; color: #0E2E6E;">Must Contain At Least 8 Characters, Upper Cases, And Number</p>
                            </div>
                            <div class="col-lg-12 col-md-6 mt-3">
                                <h5 class="form-label fw-bold mb-3" style="color: #0E2E6E;">Confirm Password</h5>
                                <div class="inputIcon d-flex">
                                    <input type="password" class="kotak form-control" placeholder="" id="input2">
                                    <span class="reveal d-flex" onclick="confPass()">
                                        <h2><i id="hide3" class="bi bi-eye"></i></h2>
                                        <h2><i id="hide4" class="bi bi-eye-slash"></i></h2>
                                    </span>
                                </div>
                                <p class="mt-1" style="margin-bottom: 0; font-size: 12px; color: #0E2E6E;">Both Password Must Match</p>
                            </div>
                        </div>
                        <div class="form-row text-center">
                            <div class="col-lg-12 my-4">
                                <button type="button" class="btn tombol fw-bold">Reset Password</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    
    <script>
        function password() {
            var x = document.getElementById("input")
            var y = document.getElementById("hide")
            var z = document.getElementById("hide2")

            if(x.type === 'password'){
                x.type = "text";
                y.style.display = "block";
                z.style.display ="none";
            }
            else {
                x.type = "password";
                y.style.display = "none";
                z.style.display ="block";
            }
        }

        function confPass() {
            var x = document.getElementById("input2")
            var y = document.getElementById("hide3")
            var z = document.getElementById("hide4")

            if(x.type === 'password'){
                x.type = "text";
                y.style.display = "block";
                z.style.display ="none";
            }
            else {
                x.type = "password";
                y.style.display = "none";
                z.style.display ="block";
            }
        }
    </script>
