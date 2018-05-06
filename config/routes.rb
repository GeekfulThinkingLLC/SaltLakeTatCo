Rails.application.routes.draw do
  devise_for :artists
  get 'pages/about'
  get '/contact', to: 'pages#contact'
  get '/about', to: 'pages#about'
  
  resources :artists
  resources :appointments
  resources :galleries

  root to: "pages#home"
end
