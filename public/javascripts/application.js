$(function(){
  Cufon.replace('.whoishere h4', {textShadow: '1px 1px rgba(214, 233, 184, 0.9)'});
  $(".item").mouseover(function(){
    $(this).find(".item_image").addClass("img_hover");
    $(this).find(".product_title").addClass("a_hover");
  }).mouseout(function(){
    $(this).find(".item_image").removeClass("img_hover");
    $(this).find(".product_title").removeClass("a_hover");
  });

  $(".field input, .field textarea").focus(function(){
    $(this).parent().find(".field_text").appear();
  });

  $(".field input, .field textarea").bind("blur", function() {
    $(this).parent().find(".field_text").hide();
  });

})
