<?php
session_start();

 ?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <form class="" action="test.php" method="post"
     enctype="multipart/form-data">
      <input name="image" type="file" required><br><br>
      <?php
      if (isset($_SESSION['img'])){
        echo '<img src="'.$_SESSION['img'].'" alt="img">';
      }
       ?>

      <input type="text" name="title" value=""><br><br>
      <textarea name="paragraph" rows="8" cols="50"></textarea>
      <br><br>
      <input type="submit" name="submit" value="Submit">
    </form>
    <br>
    <a href="destroy.php">Destroy Session</a>

  </body>
</html>
