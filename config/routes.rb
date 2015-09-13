Rails.application.routes.draw do
  get '/about_me', to: 'pages#about_me'
  get '/portfolio', to: 'pages#portfolio'
  get '/portfolio/:company', to: 'pages#portfolio', as: :company
  get '/resume', to: redirect('https://docs.google.com/document/d/1xfWFWOfD6qjv8LePycLyHnOaJYrpKQ0p-_yjwjseuYg/edit?usp=sharing')
  root to: 'pages#index'
end
