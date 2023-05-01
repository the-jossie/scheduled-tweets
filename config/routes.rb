Rails.application.routes.draw do
  get "/about", to: "about#index"

  get "/signup", to: "registration#new"
  post "/signup", to: "registration#create"

  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"

  root to: "main#index"
end
