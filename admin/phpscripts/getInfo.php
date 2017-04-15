<?php

require_once("connect.php");


    $movie = $_GET['movie'];
    $query = "SELECT * FROM tbl_movies WHERE movie_slug = '{$movie}'";

  $getMovies = mysqli_query($link, $query);

  if(mysqli_num_rows($getMovies)){
    $jsonResult="[";
    while($movResult = mysqli_fetch_assoc($getMovies)){
      $jsonResult.=json_encode($movResult).",";
    }

    $jsonResult.="]";
    $jsonResult = substr_replace($jsonResult, "", -2, 1);

    echo $jsonResult;


  }




?>
