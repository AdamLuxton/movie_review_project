<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Movie Review Site</title>
    <link rel="stylesheet" href="css/app.css">
    <link rel="stylesheet" href="css/main.css">
    <script src="js/minified/TweenMax.min.js"></script>

  </head>

  <body>

    <div class="container" id="index">
      <h1>Movies</h1>
      <form class="form-inline" id="searchForm">
        <div class="form-group">
          <select class="form-control" id="category">
            <option value="0">All Categories</option>
            <option value="1">Action</option>
            <option value="2">Comedy</option>
            <option value="3">Horror</option>
            <option value="4">Drama</option>
            <option value="5">Family</option>
          </select>
       </div>
        <div class="form-group">
          <input type="text" class="form-control" id="search" placeholder="Search for Movies">
        </div>
      </form>
      <div class="row" id="movieList">
        <div class="col-sm-6 col-md-4 col-lg-3 movieCon">
            <div class="cover"></div>
            <div class="content">
              <h2>STAR WARS</h2>
              <p>GENRE</p>
            </div>
            <img src="images/starwars.jpg" class="img-responsive" alt="">
        </div>
        <div class="col-sm-6 col-md-4 col-lg-3 movieCon">
            <div class="cover"></div>
            <div class="content">
              <h2>STAR WARS</h2>
              <p>GENRE</p>
            </div>
            <img src="images/starwars.jpg" class="img-responsive" alt="">
        </div><div class="col-sm-6 col-md-4 col-lg-3 movieCon">
            <div class="cover"></div>
            <div class="content">
              <h2>STAR WARS</h2>
              <p>GENRE</p>
            </div>
            <img src="images/starwars.jpg" class="img-responsive" alt="">
        </div><div class="col-sm-6 col-md-4 col-lg-3 movieCon">
            <div class="cover"></div>
            <div class="content">
              <h2>STAR WARS</h2>
              <p>GENRE</p>
            </div>
            <img src="images/starwars.jpg" class="img-responsive" alt="">
        </div><div class="col-sm-6 col-md-4 col-lg-3 movieCon">
            <div class="cover"></div>
            <div class="content">
              <h2>STAR WARS</h2>
              <p>GENRE</p>
            </div>
            <img src="images/starwars.jpg" class="img-responsive" alt="">
        </div><div class="col-sm-6 col-md-4 col-lg-3 movieCon">
            <div class="cover"></div>
            <div class="content">
              <h2>STAR WARS</h2>
              <p>GENRE</p>
            </div>
            <img src="images/starwars.jpg" class="img-responsive" alt="">
        </div><div class="col-sm-6 col-md-4 col-lg-3 movieCon">
            <div class="cover"></div>
            <div class="content">
              <h2>STAR WARS</h2>
              <p>GENRE</p>
            </div>
            <img src="images/starwars.jpg" class="img-responsive" alt="">
        </div><div class="col-sm-6 col-md-4 col-lg-3 movieCon">
            <div class="cover"></div>
            <div class="content">
              <h2>STAR WARS</h2>
              <p>GENRE</p>
            </div>
            <img src="images/starwars.jpg" class="img-responsive" alt="">
        </div>



      </div>
    </div>
    <div class="container" id="review">
      <a href="#" id="arrow"><i class="fa fa-chevron-left" aria-hidden="true"></i></a>
      <div class="row">
        <div id="reviewBox" class="col-lg-6 col-lg-offset-3 col-md-8 col-md-offset-2">
          <video width="100%" id="video">
            <source src="movies/trailer.mp4" type="video/mp4">
          </video>
          <div class="controls row">
            <div class="controlBox col-md-2">
              <button id="play"><i class="fa fa-play" aria-hidden="true"></i></button>
            </div>
            <div class="controlBox col-md-1">
              <button id="mute"><i class="fa fa-volume-up" aria-hidden="true"></i></button>
            </div>
            <div class="controlBox col-md-9" id="scrubCon">
              <div class="progress" id="scrubber">
                <div id="progress" class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
                </div>
              </div>
            </div>
          </div>
          <h2>Movie Title</h2>
          <p>Description</p>

        </div>

      </div>

    </div>

    <script src="js/jquery/dist/jquery.js"></script>
    <script src="js/javascripts/bootstrap.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>
