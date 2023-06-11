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
    <?php include '../templates/login.html'; ?>
    <!--Scripts-->
    <script src="../libs/bootstrap/dist/js/bootstrap.js"></script>    
</body>
</html>

<?php
include 'functions.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = sanitize(isset($_POST['email']) ? $_POST['email'] : '');
    $password = sanitize(isset($_POST['psw']) ? $_POST['psw'] : '');

    if (authenticateUser($email, $password)) {
        echo '¡Bienvenido, ' . $email . '!';
    } else {
        echo '<title>Error</title>';
    }
}

function authenticateUser($email, $password) {
    $conn = getConnection();

    $sql = "SELECT * FROM usuario WHERE usuario_email = ? AND usuario_psw = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $email, $password);
    $stmt->execute();

    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $stmt->close();
        $conn->close();
        return true;
    } else {
        $stmt->close();
        $conn->close();
        return false;
    }
}

?>


