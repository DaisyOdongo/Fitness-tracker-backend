Rails.application.routes.draw do
  resources :exercises, only: [:create, :update, :destroy]
  resources :users, only: [:create, :show]
  #get "/user", to: "home#index"
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
