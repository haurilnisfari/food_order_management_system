// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('jquery')

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

document.addEventListener("turbolinks:load", function() {
  $(document).ready(function(){
  
    $("#add-row").click(function(e){
      e.preventDefault()
      
      $("#test").html("TAHUUUUU").css('color', 'blue')
    });

    $(".form-actions").click(function(e){
      e.preventDefault()
      
      $("#tot").html("BLOOOOOD").css('color', 'blue')
    });
    


    // $('form').on('click', '.remove_record', function(event) {
    //   $(this).prev('input[type=hidden]').val('1');
    //   $(this).closest('row').hide();
    //   return event.preventDefault();
    // });

    // $('.form-action').on('click', '.add_fields', function(event) {
    //   event.preventDefault();
    //   var regexp
    //   regexp = new RegExp($(this).data('id'), 'g');
    //   $('.row').append($(this).data('row').replace(regexp);
    // });
  
  
  });
})