Rails.application.routes.draw do
  get 'home/home'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  #devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  root :to => 'sessions#new'

  get "/home", to: 'home#home'

  post '/login',   to: 'sessions#create', as: :log_in
  delete '/log_out' => 'sessions#destroy', as: :log_out
  get '/log_out' => 'sessions#destroy'
  resources :sessions
  get '/sign_in' => 'registrations#new', as: :registrations
  post '/sign_in' => 'registrations#create', as: :sign_in

end
