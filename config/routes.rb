Rails.application.routes.draw do
  devise_for :users
  resources :adresses
  resources :selected_products
end
