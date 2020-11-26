<?php
    $conn = new mysqli( 'localhost' ,'root', '', 'test' );
    $sql = "SELECT * FROM questions ";
    $r = $conn->query($sql);

    
?>

<!DOCTYPE html>
<html>
<style>
    *{
        margin:0px;
        padding:0px;
        box-sizing: border-box;
    }
    .head {
        padding:20px;
        font-size:2em;
        background-color: black;
        color:white;
    }

    .sub{
        padding:10px;
        height:40px;
        width:100px;
        border:none;
        background-color:black;
        color:white;
        margin:20px;
    }

    p{
        margin:20px;
    }
</style>

<body>
    <div class="head">Hi <?php echo $_POST['name'].$_POST['regno']  ?></div>
    
    <form action='res.php' method='post'>
        
        <input name='name' style="visibility:hidden" value = " <?php echo $_POST['name'] ?> " > </br>
        <input name='regno'style="visibility:hidden" value = " <?php echo $_POST['regno'] ?> " >
        <?php 
            if ($r->num_rows >0) {
                while($row = $r->fetch_assoc()) {
                    echo "<p>".$row['ques']."</p>";
                    $a = explode(',',$row['ans']);
                    for($i in $a){
                        echo "<input name= ' ".$row['id']." ' value = ' ".$i." ' type='radio'> </br> "  
                    };
                };
            };
        ?>
        <input type='submit' class ='sub' />
    </form>
</body>
</html>
