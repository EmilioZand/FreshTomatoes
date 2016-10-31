@Movie = React.createClass
 formatTitle: ()->
    @props.movie.title + ' (' + parseInt(@props.movie.release_date) + ')'

  handleClick: (e) ->
    e.preventDefault()
    document.getElementById('modal-poster').setAttribute('src', @props.movie.image_url)
    document.getElementById('modal-title').innerHTML = @formatTitle()
    document.getElementById('modal-description').innerHTML = @props.movie.description
    document.getElementById('modal-rating').innerHTML = 'Rating: ' + @props.movie.rating + '/5.0'
    $('#movieModal').modal({show:true})

  render: ->
    React.DOM.div className: 'col-lg-3 col-md-4 col-xs-6 thumb',
      React.DOM.a className: 'poster-link',
        React.DOM.img className: 'movie-poster img-responsive', src: @props.movie.image_url, onClick: @handleClick
      React.DOM.h5 className: 'movie-title', @props.movie.title
      React.DOM.span className: 'stars movie-rating', @props.movie.rating

    