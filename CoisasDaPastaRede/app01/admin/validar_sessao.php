<?php

    session_start();
    $url = "http://localhost:8000/admin";
    if($_SESSION["autenticacao"] != true){
        header("location: $url/login.php");
        exit;
    }

    $token='5547fc6d691f';
?>