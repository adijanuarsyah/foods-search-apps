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
//= require bootstrap-sprockets
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
//jquery load more http://stackoverflow.com/users/2224265/tushar-gupta
$(document).ready(function () {
    size_li = $("#foodList li").size();
    x=3;
    $('#foodList li:lt('+x+')').show();
    $('#loadMore').click(function () {
        x= (x+5 <= size_li) ? x+5 : size_li;
        $('#foodList li:lt('+x+')').show();
         $('#showLess').show();
        if(x == size_li){
            $('#loadMore').hide();
        }
    });
    $('#showLess').click(function () {
        x=(x-5<0) ? 3 : x-5;
        $('#foodList li').not(':lt('+x+')').hide();
        $('#loadMore').show();
         $('#showLess').show();
        if(x == 3){
            $('#showLess').hide();
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

