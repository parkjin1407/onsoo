/* onSoomain.js */

/* 내려올때 header 컬러 변경 */
/*const header = document.querySelector("#header");
const headerHeight = header.getBoundingClientRect().height;
const arrow = document.querySelector("#arrow")

function arrowUp() {
	$('body').scrollTop(0);
}

document.addEventListener("scroll", () => {

/*  console.log(window.scrollY);
  console.log(`headerHeight: ${headerHeight}`);*/

/*  if (window.scrollY > headerHeight) {
    header.classList.add("header--dark");
    arrow.classList.add("visible");
  } else {
    header.classList.remove("header--dark");
    arrow.classList.remove("visible");
  }
});*/

jQuery(document).ready(function ($) {

  $('#checkbox').change(function(){
    setInterval(function () {
        moveRight();
    }, 3000);
  });
  
	var slideCount = $('#slider ul li').length;
	var slideWidth = $('#slider ul li').width();
	var slideHeight = $('#slider ul li').height();
	var sliderUlWidth = slideCount * slideWidth;

	$('#slider').css({ width: slideWidth, height: slideHeight });
	
	$('#slider ul').css({ width: sliderUlWidth, marginLeft: - slideWidth });
	
    $('#slider ul li:last-child').prependTo('#slider ul');
    function moveLeft() {
        $('#slider ul').animate({
            left: + slideWidth
        }, 200, function () {
            $('#slider ul li:last-child').prependTo('#slider ul');
            $('#slider ul').css('left', '');
        });
    };

    function moveRight() {
        $('#slider ul').animate({
            left: - slideWidth
        }, 200, function () {
            $('#slider ul li:first-child').appendTo('#slider ul');
            $('#slider ul').css('left', '');
        });
    };

    $('a.control_prev').click(function () {
        moveLeft();
    });

    $('a.control_next').click(function () {
        moveRight();
    });

});    


// 탑스크롤
const main = document.querySelector('.first');
const mainHeight = main.getBoundingClientRect().height;

