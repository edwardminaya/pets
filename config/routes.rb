Rails.application.routes.draw do
  resources :pets

  get "/signup", to: "users#new"
  post "/users", to: "users#create"
end
