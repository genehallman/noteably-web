// jQuery-typing
//
// Version: 0.2.0
// Website: http://narf.pl/jquery-typing/
// License: public domain <http://unlicense.org/>
// Author:  Maciej Konieczny <hello@narf.pl>
(function(a){function b(b,c){function h(a){f||(f=!0,d.start&&d.start(a,e))}function i(a,b){f&&(clearTimeout(g),g=setTimeout(function(){f=!1,d.stop&&d.stop(a,e)},b>=0?b:d.delay))}var d=a.extend({start:null,stop:null,delay:400},c),e=a(b),f=!1,g;e.keypress(h),e.keydown(function(a){(a.keyCode===8||a.keyCode===46)&&h(a)}),e.keyup(i),e.blur(function(a){i(a,0)})}a.fn.typing=function(a){return this.each(function(c,d){b(d,a)})}})(jQuery)