<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

function getConnection(){
    $servername = "localhost"; 
    $username = "root";
    $password = "Miyoshi140273";
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

?>