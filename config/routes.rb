Rails.application.routes.draw do
  get "/about", to: "about#index"

  get "/signup", to: "registration#new"
  post "/signup", to: "registration#create"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"

  root to: "main#index"
end
