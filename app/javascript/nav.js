$(document).ready(function() {
  $(".menu").on("click", function() {
        $("nav ul").toggleClass("showing");
  });
});

// Scrolling Effect

$(window).on("scroll", function() {
  if($(window).scrollTop()) {
        $('nav').addClass('blackback');
        console.log('scrolling');
  }

  else {
        $('nav').removeClass('blackback');
  }
})
