$(document).on('turbolinks:load', function(){
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]'});
    $('.rated').raty({ path: '/assets',
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }
    });
});

// $( document ).ready(function() {
// 	$("body").mouseenter(function(){
// 		$(".how_it_works_col_1, .how_it_works_col_2, .how_it_works_col_3, .how_it_works_col_4").fadeOut(500);
//     $(".how_it_works_col_1, .how_it_works_col_2, .how_it_works_col_3, .how_it_works_col_4").fadeIn(5000);
// 	});
// });


$( document ).ready(function() {
	$('.alert, .alert-info, .alert-warning').delay(3000)fadeOut(2000);
	jQuery(window).load(function () {
		$(".how_it_works_col_1, .how_it_works_col_2, .how_it_works_col_3, .how_it_works_col_4").fadeOut(2000);
    $(".how_it_works_col_1, .how_it_works_col_2, .how_it_works_col_3, .how_it_works_col_4").fadeIn(4500);
	});
});


$(".alert, .alert-info, .alert-warning" ).delay(3000)fadeOut(2000);