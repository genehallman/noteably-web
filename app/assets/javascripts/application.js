// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

function fadeContent(html) {
	$("#content").fadeOut(null, function() {
		$("#content").html(html);
		$("#content").fadeIn();	
	});
}

function appendSection(html) {
	$(html).hide().appendTo('#note').fadeIn();
}

function saveSection(e) {
	var textbox = $(e.target);
	textbox.parent('form').submit();
}

$("textarea", ".edit_section").live("change", saveSection);
$("textarea", ".new_section").live("change", saveSection);
$("textarea", ".new_section").live("focus", saveSection);
