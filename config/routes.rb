Rails.application.routes.draw do
  # root to: "pages#home"
  root to: "categories#index"
  # get "categories" , to: "categories#index"
  # get "categories/:id" , to: "categories#show"
  # get "categories/:category_id/bookings/new" , to: "bookings#new"
  # post "categories/:id/bookings" , to: "bookings#create"
  # delete "bookings/:id" , to: "bookings#destroy"
  devise_for :users
  # get '/materials', to: 'materials#index'
  # get '/materials/:id/', to: 'bookings#new'
  # post '/materials/:id/', to: 'bookings#new'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :categories, only: %i[index show] do
    resources :bookings
  end
end
