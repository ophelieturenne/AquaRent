Rails.application.routes.draw do
  # root to: "pages#home"
  root to: "categories#index"
  resources :categories, only: %i[index show]
  resources :materials , only: %i[show] do
    resources :bookings, except: %i[index destroy]
  end
  resources :bookings, only: %i[index destroy]
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
