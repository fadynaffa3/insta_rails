$(document).on('click', '.image-feed', function() {
  $('#imageZoom').find('.modal-body').html('<img src="' + $(this).attr('src')  + '" class="img img-responsive"/>')
  $('#imageZoom').find('.modal-body').append("<p>" + $(this).parent().data('caption') + "</p>")
  $('#imageZoom').modal('show')
})
