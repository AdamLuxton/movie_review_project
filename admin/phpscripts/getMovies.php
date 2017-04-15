<?php

require_once("connect.php");

  if (isset($_GET['cat'])) {
    $cat = $_GET['cat'];
    if (isset($_GET['search'])) {
      $search = $_GET['search'];
      $query = "SELECT * FROM tbl_l_mc JOIN tbl_movies ON tbl_movies.movie_id = tbl_l_mc.movie_id WHERE tbl_l_mc.cat_id = {$cat} AND tbl_movies.movie_name LIKE '%{$search}%'";

    }
    else{
      $query = "SELECT * FROM tbl_l_mc JOIN tbl_movies ON tbl_movies.movie_id = tbl_l_mc.movie_id WHERE tbl_l_mc.cat_id = {$cat}";
    }

  }
  else{
    if (isset($_GET['search'])) {
      $search = $_GET['search'];
      $query = "SELECT * FROM tbl_movies WHERE tbl_movies.movie_name LIKE '%{$search}%'";
    }
    else{
      $query = "SELECT * FROM tbl_movies";

    }

  }

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
