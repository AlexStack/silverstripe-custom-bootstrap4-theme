$(function(){
    $('.top-nav .dropdown-toggle').click(function () {
        location.href = $(this).attr('href');
    });
});