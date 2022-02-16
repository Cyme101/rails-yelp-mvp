Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'restaurants', to: 'restaurant#index'
  # get 'restaurants/new', to: 'restaurants#show'
  # post 'restaurants', to: 'restaurants#show'

  # get 'restaurants/38', to: 'restaurants#show'
  # get 'restaurants/38/reviews/new', to: 'restaurants#new'
  # post 'restaurants/38/reviews', to: 'restaurants#create'
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:index, :show, :new, :create, ]
  end
end
