let interval = setInterval(displayTitle, 1);

let title = document.getElementById("title");
let pretitle = document.getElementById("pretitle");
let posttitle = document.getElementById("posttitle");
let links = document.getElementById("links");

let opacity = 0;
let textSize = 64;

function displayTitle() {
  if(opacity <= 1.0) {
    opacity += 0.005;
    title.style.opacity = opacity;
  }

  if(textSize <= 128) {
    textSize++;
    title.style.fontSize = textSize + "px";
  }

  if(opacity > 1 && textSize > 100) {
    clearInterval(interval);  
    opacity = 0;
    let x = setInterval(fadeInElements, 1);  
  }
}

function fadeInElements() {
  if(opacity <= 1.0) {
    opacity += 0.01;
    pretitle.style.opacity = opacity;
    posttitle.style.opacity = opacity;
    links.style.opacity = opacity;
  }
}