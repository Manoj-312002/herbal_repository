<?php

    include 'header.php';
    require 'head.php';

    if(!loggedin()){
        echo "hi";
        header("Location:/login.php");
    };
    
    if(isset($_POST['delete'])){
        $sql = "DELETE from post WHERE id =".$_POST['delete']."";                        
        $r = $conn->query($sql);
        
        $query = "DELETE FROM stats WHERE id =".$_POST['delete'];
        $conn->query($query);
        
        header("Location:/herbal_repository/create.php"); 

    }elseif(isset($_POST['url'])){
        if($_POST['id'] == ''){
            $sql = "INSERT INTO post (head,plant,url,info,userid) VALUES ('".$_POST['head']."','".$_POST['plant']."','".$_POST['url']."','".$_POST['info']."','".$_SESSION['id']."')"; 
            $conn->query($sql);
            
            $samp = "SELECT id FROM post WHERE url = '".$_POST['url']."'"; 
            $a = $conn->query($samp);
            $row = $a->fetch_assoc();
            
            $query = "INSERT INTO stats (id) VALUES (".$row['id'].")";
            $conn->query($query);
            
        }else{
            $sql = "INSERT INTO post (id,head,plant,url,info,userid) VALUES ('".$_POST['id']."','".$_POST['head']."','".$_POST['plant']."','".$_POST['url']."','".$_POST['info']."','".$_SESSION['id']."')";
            $conn->query($sql);
            
            $query = "INSERT INTO stats (id) VALUES (".$_POST['id'].")";
            $conn->query($query);
        };

        header("Location:/herbal_repository/create.php");
        
        
        
    }               
    elseif(isset($_POST['modify'])){
        $sql = "SELECT * from post WHERE id =".$_POST['modify']."";                        
        $row = $conn->query($sql);
        $r = $row->fetch_assoc();                        
        
        $sql = "DELETE from post WHERE id =".$_POST['modify']."";                        
        $conn->query($sql);

        $query = "DELETE FROM stats WHERE id =".$_POST['modify'];
        $conn->query($query);
    }

    elseif(isset($_POST['new'])){
        $r =array();
        $r['head'] ="";
        $r['plant'] ="";
        $r['url'] ="";
        $r['info'] ="";
        $_POST['modify'] = "";
    }

?>




<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/login.css"/>

</head>

<body ng-app="app" ng-controller="mc" >
    <form class="l" action="<?=$_SERVER['PHP_SELF'];?>" method="post">
        <h1>Edit your post</h1></br>
        <div class="line"></div></br>
        <?php
            echo "
            Heading :</br></br><input style='width:600px' name='head' value='".$r['head']."'></br>
            Plant :</br></br> <input name='plant' value='".$r['plant']."'></br>
            Image Url :</br> </br><input style='width:1000px' name='url' value='".$r['url']."'></br>
            Post Content :</br></br> <textarea name='info' value='".$r['info']."'>".$r['info']."</textarea></br></br>
            <button class='sub' type='submit' name='id' value='".$_POST['modify']."'>Save</button>
        "
        ?>
    </form>
</body>

<script>
</script>

</html>


