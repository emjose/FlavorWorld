Rails.application.routes.draw do
  resources :saved_dishes
  resources :comments
  resources :dishes
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
