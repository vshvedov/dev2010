$(function(){
  $(".item").mouseover(function(){
    $(this).find("img").addClass("img_hover");
    $(this).find(".product_title").addClass("a_hover");
  }).mouseout(function(){
    $(this).find("img").removeClass("img_hover");
    $(this).find(".product_title").removeClass("a_hover");
  });

  $(".field input, .field textarea").focus(function(){
    $(this).parent().find(".field_text").appear();
  });

  $(".field input, .field textarea").bind("blur", function() {
    $(this).parent().find(".field_text").hide();
  });

})
