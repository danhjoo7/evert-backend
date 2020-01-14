Rails.application.routes.draw do
  resources :item_categories
  resources :categories
  resources :items
  resources :user_items
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
