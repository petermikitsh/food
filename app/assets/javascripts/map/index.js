$(document).ready(function() {
	$('#search_this_day').change(function() {
		$('#start_date').prop("disabled", $(this).is(':checked'));
		$('#end_date').prop("disabled", $(this).is(':checked'));
    });
	$('#search_all_foods').change(function() {
		$('#foods').prop("disabled", $(this).is(':checked'));
    });
    $('#search_all_foods').prop("disabled", true);
    $('#share').on('hidden', function () {
    	$("#modal_title").empty();
    	$("#modal_body").empty();
	});
    $('#share').on('shown', function () {
  		$('#modal_title').append("Post to " + site);
  		$('#modal_body').append("Free Food at " + message + "!");
	});
});