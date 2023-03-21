Rails.application.routes.draw do
  resources :pets

  get "/signup", to: "users#new"
  post "/users", to: "users#create"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
