console.log("hello from drop");

let change = document.getElementById("menu-icon");
let extra = document.getElementsByClassName("nav-menu");

change.addEventListener("click", (event) => {
  change.classList.remove(extra);
});
