Rails.application.routes.draw do
  # Get /about
  get "/about-us", to: "about#index", as: :about # rename the name as about (about url is about-us)
  
  get "sign_up", to: "registrations#new" 
  post "sign_up", to: "registrations#create"

  root to: "main#index"
end
