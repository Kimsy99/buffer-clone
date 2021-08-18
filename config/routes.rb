Rails.application.routes.draw do
  # Get /about
  get "/about", to: "about#index"
  
  root to: "main#index"
end
