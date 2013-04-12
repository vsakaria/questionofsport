
$(function() {

  $("form#new_comment").on("ajax:success", function(){
      $("#questions").load("/comments/display_all_comments", function(){})
  }).bind( "ajax:error", function(a,b,c){
    $("form#new_comment").append("</br><p>ERROR</p>")
  });//on and bind closed

  $('.sign-in-link').on('click', function (){
    $('.sign-in-box').slideToggle('600')
  });

  $('.cog').on('click', function (){
    $('.stats').hide();
    $('.settings').slideToggle('600');
  });

  $('.graph').on('click', function (){
    $('.settings').hide();
    $('.stats').slideToggle('600');
  });

  $('#quiz-trigger').on('click', function (event){
    event.preventDefault
    $('.ask-question').hide();
    $('.thanks').hide();
    $('.questions').show();
  });

  $('#ask-btn').on('click', function (){
    $('.question-form').fadeToggle('400');
  });

  $('.actions').on('click', function (){
    $('.question-form').hide();
    $('.tasty').hide();
    $('.thanks').show();
  });

  $('.icon-ok-circle').on('click', function (){
    $('.questions').hide();
    $('#wrong').show();
  });

  $('.icon-remove-circle').on('click', function (){
    $('.questions').hide();
    $('#correct').show();
  });

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

// bind_slide();

//   function bind_slide(){
//     $('#quiz-trigger').off('click');
//     $('#quiz-trigger').on('click', function (){
//     $('#questions').slideToggle('400');
//   });
//   }

// })


// $(document).ready(function(){
//   $('.sign-in-link').on('click', function (){
//     $('.sign-in-box').slideToggle('600');
//   })

//   $('.cog').on('click', function (){
//     $('.stats').hide();
//     $('.settings').slideToggle('600');
//   })

//   $('.graph').on('click', function (){
//     $('.settings').hide();
//     $('.stats').slideToggle('600');
//     $(this).animate({'top': '-10px'});
//   })

//   // $('#quiz-trigger').on('click', function (){
//   //   $('.main-page-wrapper').append('#questions');
//   //   $('.ask-question').remove();
//   // })

//   $('#quiz-trigger').on('click', function (){
//     $('.ask-question').hide();
//     $('#questions').show();
//   })

//   $('.ask-btn').on('click', function (){
//     $('.question-form').fadeToggle('400');
//   })

// });

