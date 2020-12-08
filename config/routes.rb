Rails.application.routes.draw do
  devise_for :users
  resources :movies, only: [:create, :destroy, :index, :show]
  resources :favourite_movies, only: [:create, :destroy, :index]

  root 'home#home'
  get 'popular' => 'movies#popular'
  get 'search' => 'movies#search'
  get 'contact' => 'home#contact'
  post 'request_contact' => 'home#request_contact'
end
