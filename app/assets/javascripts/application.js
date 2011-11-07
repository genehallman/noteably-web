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
	var section = $(html);
	section.hide().appendTo('#note');

	$('textarea', section).autoResize({minHeight:28, maxHeight: 200, extraSpace: 20});	
	$('textarea', section).typing({stop: saveSection,	delay: 1500	});
	window.sec = section;
	$("textarea", ".new_section").bind("focus", saveSection);

	section.fadeIn();
}

function saveSection(e) {
	var textbox = $(e.target);
	textbox.parent('form').submit();
}

function showAbout() {
	$('#about').fadeIn();
	$('#about').focus();
}
function hideAbout() {
	$('#about').fadeOut();
}

$(document).ready(function() {
	$('#about').live('click', hideAbout);
});