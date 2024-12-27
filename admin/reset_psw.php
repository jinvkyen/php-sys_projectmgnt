<!-- Include CSS and JS libraries -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" type="image/x-icon" href="images/lojo.ico"/>
    <title>Login Form</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
    <div class="container">
        <a class="navbar-brand" href="#">Password Reset Form</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
</nav>

<main class="login-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Reset Your Password</div>
                    <div class="card-body">
                        <form action="#" method="POST" name="login">

                            <div class="form-group row">
                                <label for="password" class="col-md-4 col-form-label text-md-right">New Password</label>
                                <div class="col-md-6">
                                    <input type="password" id="password" class="form-control" name="password" required autofocus>
                                    <i class="bi bi-eye-slash" id="togglePassword"></i>
                                </div>
                            </div>

                            <div class="col-md-6 offset-md-4">
                                <input type="submit" value="Reset" name="reset">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
</body>
</html>

<?php
session_start();

if(isset($_POST["reset"])){
    $servername = "localhost";
    $username = "root";
    $password = "jinSQL";
    $dbname = "kkopi_dB";

    $db = mysqli_connect($servername, $username, $password, $dbname);
    if (!$db) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $psw = $_POST["password"];
    $Email = $_SESSION['email'];

    // Here, you would typically hash the password before storing it in the database.
    // For example: $hash = password_hash($psw, PASSWORD_DEFAULT);

    $sql = mysqli_query($db, "SELECT * FROM admin WHERE email='$Email'");
    $query = mysqli_num_rows($sql);

    if($query > 0){
        // Update the password in the database
        mysqli_query($db, "UPDATE admin SET password='$psw' WHERE email='$Email'");
        ?>
        <script>
            alert("<?php echo "Password updated successfully!"?>");
            window.location.replace('index.php');
        </script>
        <?php
    } else {
        ?>
        <script>
            alert("<?php echo "Please try again"?>");
        </script>
        <?php
    }
}
?>

<script>
    const toggle = document.getElementById('togglePassword');
    const password = document.getElementById('password');

    toggle.addEventListener('click', function(){
        if(password.type === "password"){
            password.type = 'text';
        } else {
            password.type = 'password';
        }
        this.classList.toggle('bi-eye');
    });
</script>
