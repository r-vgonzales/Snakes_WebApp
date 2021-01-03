// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery_ujs
//= require jquery.validate
//= require activestorage
//= require turbolinks
//= require_tree .

function ValidateSnakeForm() {
  $('#SnakeForm').validate({
    rules: {
      'snake[name]': {required:true},
      'snake[breed]': {required:true},
      'snake[age]': {
        required: true,
        digits: true,
        range: [0, 80],
      },
      'snake[owner_email]': {
        required: true,
        email: true,
      }
    },
    messages:{
      'snake[name]': {required: "You must enter the snake's name",},
      'snake[breed]': {required: "You must enter the snake's breed",},
      'snake[age]': {
        required: "You must enter the snake's age",
        digits: "Age should be a whole number between 0 and 80 years",
        range: "Age should be a whole number between 0 and 80 years",
      },
      'snake[owner_email]': {
        required: "You must to enter an email address",
        required: "You must to enter a valid email address",
      }
    }
  });
}

function ToggleText(elem){
  $('#'+elem.id+"p").toggle();
}

function SetFontSize(val){
  $("*").each(function(i,e){e.style.fontSize = val});
}

function SetPageStyle(val){
  if(val === 'Light') {
    $("*").each(function(i,e){e.style.background = "lightblue"});
    $("*").each(function(i,e){e.style.color = "black"});
  }
  else {
    $("*").each(function(i,e){e.style.background = "black"});
    $("*").each(function(i,e){e.style.color = "white"});
  }
}

$(document).ready(function()  {
 if (document.getElementById('welcome')){
  $('#pfp, #asp, #fp').hide();
  }

 if (document.getElementById('SnakeForm')){
  ValidateSnakeForm();
 }
  $('[data-js-hide-link]').click(function(event){
    $(this).parents('li').hide();
    event.preventDefault();
  });

});

