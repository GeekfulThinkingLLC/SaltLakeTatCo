Rails.application.routes.draw do
  devise_for :artists, path: '', path_names: { sign_in: "login", sign_out: "logout", sign_up: "register"} 
  get 'pages/about'
  get '/contact', to: 'pages#contact'
  get '/about', to: 'pages#about'
  
  resources :artists
  resources :appointments
  resources :tattoos

  root to: "pages#home"
end
