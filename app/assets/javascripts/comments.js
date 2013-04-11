$(function() {

  $("form#new_comment").on("ajax:success", function(){
      $("#questions").load("/comments/display_all_comments", function(){
        console.log("success")
        bind_slide();
      });
  }).bind( "ajax:error", function(a,b,c){
    $("form#new_comment").append("</br><p>ERROR</p>")
  });

  // Bind to rails' form successfully submitted function
    // load questions again
  // $('.sign-in-link').on('click', function (){
  //   $('.sign-in-box').slideToggle('600');
  // })//Form

  // $('.test').on('click', function (){
  //   $('.stats').removeClass('.stats');
  //   $('.settings').slideToggle('600');
  // })

  // $('.test2').on('click', function (){
  //   $('.stats').slideToggle('600');
  // })

bind_slide();

  function bind_slide(){
    $('#quiz-trigger').off('click');
    $('#quiz-trigger').on('click', function (){
    $('#questions').slideToggle('400');
  });
  }

})
  // $('form#new_comment').submit(function() {

  //     $.post().success(){
  //       // form submitted ok? no errors?
  //       // load the info
  //     };
  //     :success function {
  //        $("#questions").load('/comments', function(data, status, xhr){
  //     }

  //   })
  // });//Form click function