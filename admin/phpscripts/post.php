<?php

  require_once('connect.php');

  if (isset($_GET['comment'])) {
    $id = $_GET['id'];
    $name = $_GET['name'];
    $comment = $_GET['comment'];
    $query = "INSERT INTO `tbl_comments` (`comment_id`, `movie_id`, `comment_name`, `comment_comment`) VALUES (NULL, '{$id}', '{$name}', \"{$comment}\")";

    $postComment = mysqli_query($link, $query);

    if ($postComment){
      echo true;
    }
    else{
      echo false;
    }
  }
?>
