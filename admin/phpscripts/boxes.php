<?php

require_once("connect.php");

  if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = "SELECT * FROM tbl_comments WHERE movie_id = {$id} ORDER BY comment_id DESC";
    $getComments = mysqli_query($link, $query);

    if(mysqli_num_rows($getComments)){
      $jsonResult="[";
      while($comResult = mysqli_fetch_assoc($getComments)){
        $jsonResult.=json_encode($comResult).",";
      }

      $jsonResult.="]";
      $jsonResult = substr_replace($jsonResult, "", -2, 1);

      echo $jsonResult;


    }
  }






?>
