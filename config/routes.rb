Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :item_categories
      resources :categories
      resources :items
      resources :user_items
      get '/current_user', to: 'auth#show'
      post '/auth', to: 'auth#create'
      get '/profile', to: 'users#profile'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    end
  end
end
