let interval = setInterval(fadeInElements, 20);

let pretitle = document.getElementById("pretitle");
let posttitle = document.getElementById("posttitle");
let links = document.getElementById("links");

let opacity = 0;

function fadeInElements() {
  if(opacity <= 1.0) {
    opacity += 0.01;
    pretitle.style.opacity = opacity;
    posttitle.style.opacity = opacity;
    links.style.opacity = opacity;
  } else {
    clearInterval(interval);
  }
}