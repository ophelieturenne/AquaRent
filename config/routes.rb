Rails.application.routes.draw do
  devise_for :users
  # get '/equipments', to: 'equipments#index'
  # get '/equipments/:id/', to: 'bookings#new'
  # post '/equipments/:id/', to: 'bookings#new'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
