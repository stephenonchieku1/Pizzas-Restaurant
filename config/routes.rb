Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pizzas, only:[:index, :show]
  resources :restaurants, only:[:index, :show, :update, :destroy]
  resources  :restaurant_pizzas, only: [:index,:create, :update]
end
