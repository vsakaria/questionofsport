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
  })

  $('#quiz-trigger').on('click', function (){
    $('#questions').slideToggle('400');
  })

  $('.ask-btn').on('click', function (){
    $('.question-form').slideToggle('400');
  })

});