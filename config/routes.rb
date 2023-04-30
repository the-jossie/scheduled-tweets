Rails.application.routes.draw do
  get "/about", to: "about#index"

  get "/signup", to: "registration#new"
  post "/signup", to: "registration#create"
  delete "/logout", to: "session#destroy"

  root to: "main#index"
end
