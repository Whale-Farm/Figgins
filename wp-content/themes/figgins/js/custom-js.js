jQuery(document).ready( function(){
	
 

 $("#prefDate").datepicker({
    dateFormat: "d MM yy",
    duration: "medium"
  });

 $('#prefTime').timepicker({
    showPeriod: true,
    showLeadingZero: true
});



// To remove the li and extra div before the widget content

$('.footer-address .textwidget').replaceWith($('.footer-address .textwidget').contents());
$('.footer-address li.widget').replaceWith($('.footer-address li.widget').contents());



$('#navbar-header').bootnavbar();

$('#main_navbar').bootnavbar( );

$(".donate-btn").click(function() {
    $('html, body').animate({
        scrollTop: $(".cntct-sect").offset().top
    }, 2000);
});



$(".mob-toggle").click(function() {
	 
    // var $elem = $(this).next().find('.dropdown-menu').addClass("show");
    var $elem = $(this).next('.dropdown-menu ' ).first().addClass("show");
}); 


 

});


