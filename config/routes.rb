Rails.application.routes.draw do
  root 'homes#top'
  get "home/about" => 'homes#about'
  


  devise_for :users
  

  resources :books, only: [:create,:index,:show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :index, :create, :update]

  # resources :users,only: [:show,:index,:edit,:update]
  # resources :books
  
  # root 'homes#top'
  # get 'homes/about'
end