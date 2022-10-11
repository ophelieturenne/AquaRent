Rails.application.routes.draw do
  root to: "pages#home"
  get "categories" , to: "categories#index"
  get "categories/:id" , to: "categories#show"
  devise_for :users
  # get '/materials', to: 'materials#index'
  # get '/materials/:id/', to: 'bookings#new'
  # post '/materials/:id/', to: 'bookings#new'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
