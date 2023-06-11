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

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    echo "Email: " . $email . "<br>";
echo "Password: " . $password . "<br>";
echo "First Name: " . $firstName . "<br>";
echo "Last Name: " . $lastName . "<br>";
echo "Casa Name: " . $casaName . "<br>";

    $email = sanitize(isset($_POST['email']) ? $_POST['email'] : '');
    $password = sanitize(isset($_POST['psw']) ? $_POST['psw'] : '');
    $firstName = sanitize(isset($_POST['fname']) ? $_POST['fname'] : '');
    $lastName = sanitize(isset($_POST['lname']) ? $_POST['lname'] : '');
    $casaName = isset($_POST['casa']) ? $_POST['casa'] : '';

    if (registerUser($email, $password, $firstName, $lastName, $casaName)) {
        echo 'Registro exitoso. ¡Bienvenido, ' . $firstName . ' ' . $lastName . '!';
    } else {
        echo 'Error en el registro. Por favor, verifica los datos ingresados.';
    }
}

function registerUser($email, $password, $firstName, $lastName, $casaName) {
    $conn = getConnection();

    $sql = "INSERT INTO usuario (usuario_name, usuario_apellido, usuario_email, usuario_psw) VALUES (?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssss", $firstName, $lastName, $email, $password);

    if ($stmt->execute()) {
        $userId = $stmt->insert_id;

        if (!empty($casaName)) {
            $sql = "INSERT INTO casa (id_usuario, casa_name) VALUES (?, ?)";
            $stmt2 = $conn->prepare($sql);
            $stmt2->bind_param("is", $userId, $casaName);
            
            if ($stmt2->execute()) {
                $stmt2->close();
            } else {
                $stmt2->close();
                $stmt->close();
                $conn->close();
                return false;
            }
        }

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


