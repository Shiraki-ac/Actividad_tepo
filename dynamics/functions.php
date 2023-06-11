<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

function getConnection(){
    $servername = "localhost"; 
    $username = "root";
    $password = "";
    $dbname = "teporingoDB";
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Error en la conexión a la base de datos: " . $conn->connect_error);
    }

    return $conn;
}

function sanitize($input) {
    if (is_array($input)) {
        foreach ($input as $key => $value) {
            $input[$key] = sanitize($value);
        }
    } else {
        $input = trim($input);
        $input = stripslashes($input);
        $input = htmlspecialchars($input);
    }

    return $input;
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