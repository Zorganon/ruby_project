function ratey (){
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
  $('.rated').raty({ path: '/assets',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  });
}

$(document).on('ready page:load', function(){
  ratey();
  //this bit is for the zoom feature
  $('.img-zoom').elevateZoom();
//  $("#new_comment").on("submit", reload);
});
