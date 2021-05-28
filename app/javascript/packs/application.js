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

// document.addEventListener("turbolinks:load", function() {
//   $(document).ready(function(){
  
//     $("#add-row").click(function(e){
//       e.preventDefault()
      
//       $("#test").html("TAHUUUUU").css('color', 'blue')
//     });

//     $(".form-actions").click(function(e){
//       e.preventDefault()
      
//       $("#tot").html("BLOOOOOD").css('color', 'blue')
//     });

//     $(".select-menu-item").change(function(e){
//       e.preventDefault()
      
//       $("#price").value("").css('color', 'blue')
//     });
//   }
// });

    


$(document).on('turbolinks:load', function() {

  $('form').on('click', '.remove_record', function(event) {
    $(this).prev('input[type=hidden]').val('1');
    $(this).closest('tr').hide();
    return event.preventDefault();
  });

  $('form').on('click', '.add_fields', function(event) {
    var regexp, time;
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g');
    $('.fields').append($(this).data('fields').replace(regexp, time));
    return event.preventDefault();
  });

  $('form').on('change', '#menus', function(event) {
    // ambil id value dari dropdown
    id = $(this).val();
    console.log(id);

    // dari id, dijadikan param ke suatu url/endpoint dari backend (localhost/menu_items/price/:id) 
    // $.ajax({
    //   url: "#{update_artists_path}",
    //   data: {
    //     genre_id : $('#genres_select').val()
    //   },
    //   dataType: "script"
    // });
    // endpointnya balikin json berupa "price: 1000"
    price = 9000;
    
    // dari balikan json, ditampilkan di #price
    $('#price').val(price);

    $("#price").css('color', 'blue')
    return event.preventDefault();
  });

});
