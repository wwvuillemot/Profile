Rails.application.routes.draw do
  get '/aboutme', to: 'pages#aboutme'
  get '/portfolio', to: 'pages#portfolio'
  root to: 'pages#index'
end
