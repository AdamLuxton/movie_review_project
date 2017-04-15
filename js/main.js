(function(){


  //Variables
  var cat = document.querySelector('#category'),
      search = document.querySelector('#search'),
      list = document.querySelector('#movieList'),
      commentList = document.querySelector('#commentList'),
      index = document.querySelector('#index'),
      review = document.querySelector('#review'),
      play = document.querySelector('#play'),
      mute = document.querySelector('#mute'),
      video = document.querySelector('#video'),
      progress = document.querySelector('#progress'),
      scrubber = document.querySelector('#scrubber'),
      title = document.querySelector("#reviewBox h2"),
      desc = document.querySelector("#reviewBox p"),
      playing = false,
      arrow = document.querySelector('#arrow'),
      id = document.querySelector('#movie_id'),
      movie_id,
      movies;

      video.muted = false;

  //Functions
  function movieCall(url){
    httpRequest = new XMLHttpRequest();
    if(httpRequest===null){
    	alert("Whoa there! Your browser is not updated enough to use this site. Maybe it's time for and <a href='http://browsehappy.com'>upgrade</a>?");
      return;
		}

    //console.log(url);

		httpRequest.onreadystatechange = loadMovies;
		httpRequest.open("get", url);
		httpRequest.send();
  }

  function infoCall(url){
    httpRequest = new XMLHttpRequest();
    if(httpRequest===null){
    	alert("Whoa there! Your browser is not updated enough to use this site. Maybe it's time for and <a href='http://browsehappy.com'>upgrade</a>?");
      return;
		}

    //console.log(url);

		httpRequest.onreadystatechange = loadInfo;
		httpRequest.open("get", url);
		httpRequest.send();
  }

  function commentCall(e){
    e.preventDefault();
    httpRequest = new XMLHttpRequest();
    if(httpRequest===null){
    	alert("Whoa there! Your browser is not updated enough to use this site. Maybe it's time for and <a href='http://browsehappy.com'>upgrade</a>?");
      return;
		}

    if ((document.querySelector('#name').value!="")&&(document.querySelector('#comment').value!="")){
      var name = encodeURIComponent(document.querySelector('#name').value);
      var comment = encodeURIComponent(document.querySelector('#comment').value);
      movie_id = document.querySelector('#movie_id').value;

      url = "admin/phpscripts/post.php" + "?id=" + movie_id + "&name=" + name + "&comment=" + comment;

      console.log(url);

  		httpRequest.onreadystatechange = addComment;
  		httpRequest.open("GET", url);
  		httpRequest.send();
    }
    else{
      document.querySelector("#error").classList.remove('hide');
    }

  }

  function addComment(){
     if(httpRequest.readyState===4 || httpRequest.readyState==="complete"){
       if (httpRequest.responseText=="1") {
         //console.log("worked");
         getBoxes(movie_id);
       }
       else{
         console.log("something went wrong.");
       }

     }
   }

  function loadInfo(){
     if(httpRequest.readyState===4 || httpRequest.readyState==="complete"){
       var json = JSON.parse(httpRequest.responseText);
       title.innerHTML = json[0].movie_name;
       desc.innerHTML = json[0].movie_desc;
       video.currentSrc = "movies/" + json[0].movie_video;
       id.value = json[0].movie_id;
       getBoxes(json[0].movie_id);
     }
   }

  function loadMovies(){
     if(httpRequest.readyState===4 || httpRequest.readyState==="complete"){
       list.innerHTML = "";
       var json = JSON.parse(httpRequest.responseText);
       [].forEach.call(json, function(movie){
         buildMovie(movie);
       });
       movies = document.querySelectorAll('.movieCon');
       reloadMovies();
     }
  }

  function reloadMovies(){
    [].forEach.call(movies, function(box){
      box.addEventListener('click', function(){
        url = "admin/phpscripts/getInfo.php" + "?movie=" + box.id;
        //console.log(url);
        infoCall(url);
        TweenMax.to(index, 0.5, {opacity: 0, ease: Power1.easeOut, onComplete: function(){
          index.style.display = "none";
          review.style.display = "block";
          TweenMax.to(review, 0.5, {opacity: 1, ease: Power1.easeOut});

        }});
      });
    });
  }

  function buildMovie(movie){
    var div = document.createElement('div');
    div.classList.add("col-sm-6", "col-md-4", "col-lg-3", "movieCon");
    div.id = movie.movie_slug;
    var div2 = document.createElement('div');
    div2.className = "content";
    var titleH2 = document.createElement('h2');
    titleH2.appendChild(document.createTextNode(movie.movie_name.toUpperCase()));
    div2.appendChild(titleH2);
    var div3 = document.createElement('div');
    div3.className = "cover";
    var img = document.createElement('img');
    img.src = "images/" + movie.movie_img;
    img.alt = "Poster for " + movie.movie_name;
    img.className = "img-responsive";
    div.appendChild(div2);
    div.appendChild(div3);
    div.appendChild(img);
    list.appendChild(div);
  }

  function pauseVideo(){
    if (playing === false) {
      video.play();
      playing = true;
      play.innerHTML = "<i class='fa fa-pause' aria-hidden='true'></i>";
    }
    else{
      video.pause();
      playing = false;
      play.innerHTML = "<i class='fa fa-play' aria-hidden='true'></i>";
    }
  }

  function muteVideo(){
    if (video.muted === false) {
      video.muted = true;
      mute.innerHTML = "<i class='fa fa-volume-off' aria-hidden='true'></i>";
    }
    else{
      video.muted = false;
      mute.innerHTML = "<i class='fa fa-volume-up' aria-hidden='true'></i>";
    }

  }

  function updateTime(){
    var time = (video.currentTime/video.duration)*100;
    //console.log(time);
    progress.style.width = time + "%";
  }

  function scrubVideo(e){
    var el = this.getBoundingClientRect();
    var distance = el.left + window.scrollX;
    //console.log(e.clientX-distance);
    var percent = ((e.clientX-distance)/scrubber.offsetWidth)*100;
    //console.log(percent);
    video.currentTime = (percent/100)*video.duration;
  }

  function backIndex(e){
    e.preventDefault();
    video.pause();
    TweenMax.to(review, 0.5, {opacity: 0, ease: Power1.easeOut, onComplete: function(){
      review.style.display = "none";
      index.style.display = "block";
      TweenMax.to(index, 0.5, {opacity: 1, ease: Power1.easeOut});
    }});
  }

  function getBoxes(id){
    httpRequest = new XMLHttpRequest();
    if(httpRequest===null){
    	alert("Whoa there! Your browser is not updated enough to use this site. Maybe it's time for and <a href='http://browsehappy.com'>upgrade</a>?");
      return;
		}

    url = "admin/phpscripts/boxes?id=" + id;

    //console.log(url);

		httpRequest.onreadystatechange = addBoxes;
		httpRequest.open("get", url);
		httpRequest.send();
  }

  function addBoxes(){
    if(httpRequest.readyState===4 || httpRequest.readyState==="complete"){
      commentList.innerHTML="";
      var json = JSON.parse(httpRequest.responseText);
      for (var i = 0; i < json.length; i++) {
        makeBoxes(json[i]);
      }

    }

  }

  function makeBoxes(array){
    //console.log(array.comment_name);
    var div = document.createElement("div");
    div.className = "col-xs-12 commentBox";
    var h3 = document.createElement("h3");
    h3.appendChild(document.createTextNode(decodeURI(array.comment_name)));
    var p = document.createElement("p");
    p.appendChild(document.createTextNode(decodeURI(array.comment_comment)));
    div.appendChild(h3);
    div.appendChild(p);
    commentList.appendChild(div);
  }

  //Listeners
  arrow.addEventListener('click', backIndex, false);
  document.querySelector('#submit').addEventListener('click', commentCall, false);
  play.addEventListener('click', pauseVideo, false);
  scrubber.addEventListener('click', scrubVideo, false);
  mute.addEventListener('click', muteVideo, false);
  video.addEventListener('timeupdate', updateTime, false);
  window.addEventListener('load', function(){
    url = "admin/phpscripts/getMovies.php";
    movieCall(url);
  });
  cat.addEventListener('change', function(){
    //console.log(cat.value);
    if (cat.value != 0) {
      url = "admin/phpscripts/getMovies.php" + "?cat=" + cat.value + "&search=" + search.value;
      //console.log(url);
      movieCall(url);
    }
    else{
      if (search.value !== ""){
        url = "admin/phpscripts/getMovies.php" + "?search=" + search.value;
      }
      else{
        url = "admin/phpscripts/getMovies.php";
      }
      //console.log(url);
      movieCall(url);

    }
  }, false);
  search.addEventListener('input', function(){
    //console.log(cat.value);

    if (cat.value != 0) {
      url = "admin/phpscripts/getMovies.php" + "?cat=" + cat.value + "&search=" + search.value;
      //console.log(url);
      movieCall(url);
    }
    else{
      if (search.value !== ""){
        url = "admin/phpscripts/getMovies.php" + "?search=" + search.value;
      }
      else{
        url = "admin/phpscripts/getMovies.php";
      }
      //console.log(url);
      movieCall(url);

    }  }, false);

})();
