<?php
    $dbhost = "127.0.0.1";
    $dbuser = "userroot";
    $dbpass = "teste123!";
    $db = "testesistema";
    
    // Create connection
    $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $db);
    // Check connection
    if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
    }
    
    return $conn
?>