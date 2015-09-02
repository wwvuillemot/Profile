Rails.application.routes.draw do
  get '/aboutme', to: 'pages#aboutme'
  get '/portfolio', to: 'pages#portfolio'
  get '/resume', to: 'pages#resume'
  root to: 'pages#index'
end
