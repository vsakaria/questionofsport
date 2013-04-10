$(function() {
  $('form#new_comment').on('ajax:success', function(data, status, xhr) {
    console.log("form submitted successfully");

    $("#questions").load("/comments");
  });


})
