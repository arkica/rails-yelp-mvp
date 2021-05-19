Rails.application.routes.draw do
  #get 'restaurants', to: 'restaurants#index'
  #get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  #get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  #post 'restaurants', to: 'restaurants#create', as: :create do
  resources :restaurants, only: [:index, :new, :show, :create] do
    resources :reviews, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
