commenter = $('#comment_form #comment_commenter');
comment_body = $('#comment_form #comment_body');
submitButton = $('#comment_form #submit_button');

$('#comment_form').submit(function(e){
  if($(commenter).val() == undefined) {
    $(commenter).css('border-color', 'red');
    e.preventDefault();
  }else{
    $(commenter).css('border-color', 'none');
  }

  if($(comment_body).val() == undefined) {
    $(comment_body).css('border-color', 'red');
    e.preventDefault();
  }else{
    $(comment_body).css('border-color', 'none');
  }
});
