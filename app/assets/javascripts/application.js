// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(function(){
	$('#search').on('keyup', function(){
		var isi=($('#search').val()).trim()
		if (isi.length>0) {
			$('#search_key').click();
		}
	});
});
$(function(){
	$("#search").autocomplete({
		select:function(event,ui){
			setTimeout(function(){
				$('#search_key').click();
			}, 20);
		}
	});
});
$(document).ready(function(){
    $('#open-id').hide();
    $('#open-in').hide();
    $('#id-food').change(function(){
        if(this.checked)
            $('#open-id').fadeIn('slow');
        else
            $('#open-id').fadeOut('slow');

    });
    $('#in-food').change(function(){
        if(this.checked)
            $('#open-in').fadeIn('slow');
        else
            $('#open-in').fadeOut('slow');

    });
});