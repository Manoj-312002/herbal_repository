<?php
    function loggedin(){
        if(isset($_SESSION['id'])){
            return TRUE;
        }
    };

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styles.css" />
</head>
<body>
    <div class="head">
        <h1>Herbal </br> Repository</h1>
        <div class="right">
            <?php 
            
                if(loggedin()){
                    echo "
                        <form method='post' action='index.php'>
                        <input type='submit' value='Sign out' class='a-l' name='signout''/>
                        </form>";
                }else{
                    echo "<a class='a-l' href='login.php'>Login</a>";
                };
            ?>
    
            <div class="nav">
                <a href="index.php">Home</a>
                <a href="create.php">Create</a>
            </div>
        </div>
    </div>
    
</body>
<script src="./javascript/head.js"></script>
</html>