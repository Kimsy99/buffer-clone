Rails.application.routes.draw do
  # Get /about
  get "/about-us", to: "about#index", as: :about # rename the name as about (about url is about-us)
  
  root to: "main#index"
end
