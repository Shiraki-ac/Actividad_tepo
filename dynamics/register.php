<!DOCTYPE html>
<html lang="en">
<head>
    <!--CSS-->
    <link rel="stylesheet" href="../statics/main.css">
    <link rel="stylesheet" href="../libs/bootstrap/css/bootstrap.css">
    <!--Meta-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body class="d-flex align-items-center py-4 bg-body-tertiary">
    <!--NavBar-->
    
    <!--MAIN-->
    <?php include '../templates/register.html'; ?>
    <!--Scripts-->
    <script src="../libs/bootstrap/dist/js/bootstrap.js"></script>    
</body>
</html>
<?php
include 'functions.php';

$email = $password = $firstName = $lastName = $casaName = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = sanitize(isset($_POST['email']) ? $_POST['email'] : '');
    $password = sanitize(isset($_POST['psw']) ? $_POST['psw'] : '');
    $firstName = sanitize(isset($_POST['fname']) ? $_POST['fname'] : '');
    $lastName = sanitize(isset($_POST['lname']) ? $_POST['lname'] : '');
    $casaName = isset($_POST['casa']) ? $_POST['casa'] : '';
}
?>



