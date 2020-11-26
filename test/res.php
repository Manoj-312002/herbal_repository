<!DOCTYPE html >
<html>
    <body>

        <div class="head">Hi <?php echo $_POST['name'].$_POST['regno'];  ?></div>
        <?php
            $conn = new mysqli( 'localhost' ,'root', '', 'test' );
            $sql = "SELECT * FROM questions ";
            $r = $conn->query($sql);

            $p = 0;

            if ($r->num_rows >0) {
                while($row = $r->fetch_assoc()) {
                    if($_POST[$row['id']] == $row['cans'] ){
                        p +=1;
                    };
                };
            };

            echo 'your score is'.$p*5 ;
        ?>
    
    </body>
</html>
