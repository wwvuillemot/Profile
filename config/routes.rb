Rails.application.routes.draw do
  get '/aboutme', to: 'pages#aboutme'
  get '/portfolio', to: 'pages#portfolio'
  get '/portfolio/:company', to: 'pages#portfolio'
  get '/resume', to: redirect('https://docs.google.com/document/d/1xfWFWOfD6qjv8LePycLyHnOaJYrpKQ0p-_yjwjseuYg/edit?usp=sharing')
  root to: 'pages#index'
end
