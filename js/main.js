$(document).ready(function() {
  var prevScrollpos = window.pageYOffset;

  $('.fa-bars').click(function() {
    $(this).toggleClass('fa-times');
    $('.navbar').toggleClass('nav-toggle');
  });

  $(window).on('scroll load', function() {
    $('.fa-bars').removeClass('fa-times');
    $('.navbar').removeClass('nav-toggle');

    if ($(window).scrollTop() > 30) {
      $('header').addClass('header-active');
      $('.navbar').css('position', 'fixed');
    } else {
      $('header').removeClass('header-active');
      $('.navbar').css('position', 'absolute');
    }

    $('section').each(function() {
      var id = $(this).attr('id');
      var height = $(this).height();
      var offset = $(this).offset().top - 200;
      var top = $(window).scrollTop();
      if (top >= offset && top < offset + height) {
        $('.navbar ul li a').removeClass('active');
        $('.navbar').find('[href="#' + id + '"]').addClass('active');
      }
    });
  });
});


