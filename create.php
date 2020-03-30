<?php
    include 'header.php';
    require 'head.php';

    if(!loggedin()){
        header("Location:login.php");
    };

    $sql = "SELECT * FROM post WHERE userid =".$_SESSION['id'];
    $r = $conn->query($sql);

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/create.css"/>
</head>
<body ng-app="app" ng-controller="mc">
    <div class="content">
        <form class="l" action="post.php" method="post">
        <input type="submit" name="new" class="add" value="+"/>
        <table>
            <?php 
                if ($r->num_rows >0) {
                    while($row = $r->fetch_assoc()) {
            
                        echo "
                        <tr>
                            <td>
                                <p>".substr($row['date'],0,10)."</p>
                                <p>".$row['head']."</p>
                                <button type='submit' value='".$row['id']."' name='modify'>Modify</button>
                                <button type='submit' value='".$row['id']."' name='delete'>Delete</button>
                            </td>
                        </tr>
                        ";
                    };
                } else {
                    echo "0 results";
                }
            ?>
            </table>
        </form>
    </div>
</body>

<script>
</script>

</html>
