Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/new'
  get 'movies', to: 'movies#index'
  post 'movies', to: 'movies#create'
  root 'movies#index'
end
