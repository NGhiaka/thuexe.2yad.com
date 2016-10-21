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
//= require ckeditor-jquery
//= require bootstrap-sprockets
//= require moment
//= require bootstrap-datetimepicker

$(window).load(function(){
	loadpicker();
});
function loadpicker() {
    $('#datetimepicker6').datetimepicker({format: 'DD-MM-YYYY HH:mm:ss'});
    $('#datetimepicker7').datetimepicker({
    	format: 'DD-MM-YYYY HH:mm:ss', 
        useCurrent: false //Important! See issue #1075
    });
    $("#datetimepicker6").on("dp.change", function (e) {
        $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
    });
    $("#datetimepicker7").on("dp.change", function (e) {
        $('#datetimepicker6').data("DateTimePicker").maxDate(e.date) - 1;
    });
}
