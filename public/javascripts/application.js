/*
  Variables
*/



/*
  Document Ready
*/
$(function() {

  /* Plugin Calls
  -----------------*/
  $('input[title!=""]').hint();     // Input Hints
  
  $("#scrollable").scrollable({     // Scrollable
    clickable: false,
    keyboard: false,
    size: 8
  });
  
  $(".tabs").tabs();                // jQuery tabs
  
  $( ".datepicker" ).datepicker();
  
  // Search Autocomplete
  /*var availableTags = ["Mike Scriber", "Trev Feeney", "Ryan Bankmann", "Sidney Crosby", "Mike Green", "Ryan Parent", "Ryan Smith"];
	$("#player_search").autocomplete({
		source: availableTags
	});*/
  
  
  /* Main Navigation
  -----------------*/
  $('#nav li').hover(
  	function() {
  		$(this).addClass('hover');
  		$('.subnav', this).show();
  	},
  	function() {
  		$(this).removeClass('hover');
  		$('.subnav', this).hide();
  	}
  )
  
});