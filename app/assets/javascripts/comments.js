$(document).ready(function(){
  $('.sign-in-link').on('click', function (){
    $('.sign-in-box').slideToggle('600');
  })

  $('.cog').on('click', function (){
    $('.stats').hide();
    $('.settings').slideToggle('600');
  })

  $('.graph').on('click', function (){
    $('.settings').hide();
    $('.stats').slideToggle('600');
    $(this).animate({'top': '-10px'});
  })

  // $('#quiz-trigger').on('click', function (){
  //   $('.main-page-wrapper').append('#questions');
  //   $('.ask-question').remove();
  // })

  $('#quiz-trigger').on('click', function (){
    $('.ask-question').hide();
    $('#questions').show();
  })

  $('.ask-btn').on('click', function (){
    $('.question-form').fadeToggle('400');
  })

});