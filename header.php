<?php
    session_start();
    // $mysqli = new mysqli("SG-Manoj-2076-master.servers.mongodirector.com", "<user>", "<password>", "<your-database-name", 3306);
    $servername = "SG-Manoj-2076-master.servers.mongodirector.com";
    $username = "manoj";
    $password = "Abcdef123$";
    $dbname = "repository";
    $conn = new mysqli($servername, $username, $password, $dbname,3306);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
        echo "conn 
        error";
    }; 
      
?>
