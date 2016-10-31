Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/new'
  post 'movies', to: 'movies#create'
  root 'movies#index'
end
