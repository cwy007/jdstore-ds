// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require select2
//= require_tree .

$(document).on("turbolinks:load", function(){
  /*begin 鼠标移动到购物车块部弹出购物车下拉*/
  $("#top-cart .cart-bd").mouseenter(function() {
    // $(this).css("background-color","inherient").css("border-bottom","none");
    $("#top-cart .cart-hide").show();
  });
  $("#top-cart .cart-bd").mouseleave(function() {
    // $(this).css("background-color","inherient").css("border-bottom","inherient");
    $("#top-cart .cart-hide").hide();
  });
  $("#top-cart .cart-hide").mouseenter(function() {
    // $("#top-cart .cart-bd").css("background-color","inherient").css("border-bottom","none");
    $(this).show();
  });
  $("#top-cart .cart-hide").mouseleave(function() {
    // $("#top-cart .cart-bd").css("background-color","inherient").css("border-bottom","1px solid #ddd");
    $(this).hide();
  });
   /* end 鼠标移动到购物车块部弹出购物车下拉*/
});

//start of goTtop

//start of  welcome#index navbar
$(document).on("turbolinks:load", function(){
  $(window).scroll(function () {
    if ($(this).scrollTop() > 600) {
      $(".goTop").fadeIn(100);
    } else {
      $(".goTop").fadeOut(200);
    }
  });
  $(".goTop").click(
    function() {
      $('html,body').animate({
        scrollTop: 0
      }, 700);
    });
})
//end of  welcome#index navbar

//end of goTop

$(window).scroll(function () {
  if ($(this).scrollTop() > 550) {
    $('#top-navbar').addClass('show_bgcolor')
  } else {
    $('#top-navbar').removeClass('show_bgcolor')
  }
})
