@Movies = React.createClass
  getInitialState: ->
      movies: @props.data
  getDefaultProps: ->
    movies: []
  render: ->
    React.DOM.div className: 'container-fluid',
      React.DOM.div id: '#movies', className: 'row',
        for movie in @state.movies
          React.createElement Movie, key: movie.id, movie: movie
    
      