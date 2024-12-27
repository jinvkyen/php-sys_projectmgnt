<?php
session_start();
if (isset($_POST["recover"])) {
    $servername = "localhost";
    $username = "root";
    $password = "jinSQL";
    $dbname = "kkopi_dB";

    $db = mysqli_connect($servername, $username, $password, $dbname);
    if (!$db) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $email = $_POST["email"];
    $sql = "SELECT * FROM users WHERE email='$email'";
    $result = mysqli_query($db, $sql);

    if (mysqli_num_rows($result) > 0) {
        // Email exists in the database, proceed with password change
        $_SESSION['email'] = $email;
        // Redirect to the password change form
        header("Location: reset_psw.php");
        exit();
    } else {
        // Email does not exist in the database
        echo"<script>alert('Sorry, no email exist.');
        window.location.replace('recover_psw.php');
        </script>";
    }
}
?>
