Rails.application.routes.draw do
  # root to: "pages#home"
  root to: "categories#index"
  resources :categories, only: %i[index show]
  resources :materials , only: %i[show] do
    resources :bookings
  end
  resources :bookings, only: %i[index]
  devise_for :users
  # get '/materials', to: 'materials#index'
  # get '/materials/:id/', to: 'bookings#new'
  # post '/materials/:id/', to: 'bookings#new'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
