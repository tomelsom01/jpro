const { preventOverflow } = require("@popperjs/core");

document.addEventListener('DOMContentLoaded', function () {
  const commonAncestor = document.body;
  commonAncestor.addEventListener('click', function (event) {
     const togglebutton = event.target.closest('.toggle-button');
     const navbarlinks = document.querySelector('.clickme');

     if (togglebutton) {
        console.log('clicked');
        navbarlinks.classList.toggle('active');
        event.preventDefault();
        console.log('Navbar Links Active Class:', navbarlinks.classList.contains('active'));
     }

  });

  console.log('Script loaded2');

});
