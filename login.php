<?php 
    include 'header.php';
    require 'head.php';

    if(loggedin()){
        echo "hi";
        header("Location:/herbal_repository/index.php");
    };

    
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/login.css"/>
</head>
<body>
    <div class="form" ng-app="login" ng-controller="mc">
        <div class="inner">
            
            <form class='lk' method='post' action='index.php' autocomplete="off" >
                <input class="text {{class}}" ng-change='ch($event)'  name='user' placeholder="username" ng-model='user'></br><p>username atleast 5 character</p>
                <input class="text {{pass}}" ng-change='pch($event)' type="password"  name='pass' placeholder="password" ng-model='passa'></br><p>Invalid password</p>
                <input ng-click="validateForm($event)" class="sub" type="submit" value="Sign in"/></br>
                <a href="signup.php">Dont have a account Sign up</a>
            </form>

        </div>
    </div>
</body>
<script src="./javascript/login.js" ></script>
</html>