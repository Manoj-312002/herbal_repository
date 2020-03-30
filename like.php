<?php
    include "header.php";
    include "head.php";

    if(!loggedin()){
        header("Location:/login.php");   
    }

    if(isset($_POST['likes'])){
        
        $sql = "UPDATE stats SET likes = likes +1 WHERE id = ".$_POST['likes'];
        $conn->query($sql);
        header("Location:/herbal_repository/index.php");
    }elseif(isset($_POST['dislikes'])){
        
        $sql = "UPDATE stats SET dislikes = dislikes +1 WHERE id = ".$_POST['dislikes'];
        $conn->query($sql);
    }

?>