(function(){
  var boxes = document.querySelectorAll('.galleryBox'),
      links = document.querySelectorAll('.galleryBox a'),
      img = document.querySelector('#modImg'),
      forward = document.querySelector('#forward'),
      backward = document.querySelector('#backward'),
      title = document.querySelector('#modTitle'),
      author = document.querySelector('#author'),
      desc = document.querySelector('#desc'),
      id,
      httpRequest;

  function resizeBox(){
    for (var i = 0; i < boxes.length; i++) {
      boxes[i].style.height = Math.floor(boxes[0].offsetWidth) + "px";
    }
  }

  function goUp(e){
    e.preventDefault();
    id++;
    if (id>boxes.length) {
      id = 1;
    }
    makeRequest();
  }

  function goDown(e){
    e.preventDefault();
    id--;
    if (id<=0) {
      id = boxes.length;
    }
    makeRequest();
  }

  function linkClick(e){
    e.preventDefault();
    id = e.currentTarget.id.substring(3);
    //console.log(id);
    makeRequest();
  }
  function makeRequest(){
    var link = 'admin/phpscripts/getImage.php'+'?id='+id;

    httpRequest = new XMLHttpRequest();

    if(httpRequest===null){
			alert("Error! Please update your browser.");
			return;
		}

    httpRequest.onreadystatechange = changeModal;
		httpRequest.open("GET", link);
		httpRequest.send(null);
  }

  function changeModal(){
    if(httpRequest.readyState===4 || httpRequest.readyState==="complete"){
      var json = JSON.parse(httpRequest.responseText);
      console.log(json);
      img.src = "images/"+json[0].gallery_img;
      title.innerHTML = "Chantry Island Photo by " + json[0].gallery_author;
      author.innerHTML = "Photo by " + json[0].gallery_author;
      desc.innerHTML = json[0].gallery_desc;

    }
  }

  window.addEventListener('load', resizeBox, false);
  window.addEventListener('resize', resizeBox, false);
  [].forEach.call(links, function(link){
    link.addEventListener('click', linkClick, false);
  });
  forward.addEventListener('click', goUp, false);
  backward.addEventListener('click', goDown, false);

})();
