!function(h,u){var l=h();h.fn.dropdownHover=function(a){return"ontouchstart"in document?this:(l=l.add(this.parent()),this.each(function(){var n,o=h(this),t=o.parent(),e={delay:500,instantlyCloseOthers:!0},r={delay:h(this).data("delay"),instantlyCloseOthers:h(this).data("close-others")},s="show.bs.dropdown",i="hide.bs.dropdown",d=h.extend(!0,{},e,a,r);t.hover(function(e){if(!t.hasClass("open")&&!o.is(e.target))return!0;!0===d.instantlyCloseOthers&&l.removeClass("open"),u.clearTimeout(n),t.addClass("open"),o.trigger(s)},function(){n=u.setTimeout(function(){t.removeClass("open"),o.trigger(i)},d.delay)}),o.hover(function(){!0===d.instantlyCloseOthers&&l.removeClass("open"),u.clearTimeout(n),t.addClass("open"),o.trigger(s)}),t.find(".dropdown-submenu").each(function(){var n,o=h(this);o.hover(function(){u.clearTimeout(n),o.children(".dropdown-menu").show(),o.siblings().children(".dropdown-menu").hide()},function(){var e=o.children(".dropdown-menu");n=u.setTimeout(function(){e.hide()},d.delay)})})}))},h(document).ready(function(){h('[data-hover="dropdown"]').dropdownHover()})}(jQuery,this);