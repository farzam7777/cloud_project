!function(t){switch_style={onReady:function(){this.switch_style_click()},switch_style_click:function(){$(".styleswitch").click(function(){var t=$(this).attr("id");$("#switch_style").attr("href","css/colors/"+t+".css"),$("#default-logo").attr("src","images/logo-black.png"),$("#retina-logo").attr("src","images/logo-black-retina.png")}),$("#turquoise").click(function(){$("#default-logo").attr("src","images/logo.png"),$("#retina-logo").attr("src","images/logo-retina.png")})}},t().ready(function(){switch_style.onReady()})}(jQuery);