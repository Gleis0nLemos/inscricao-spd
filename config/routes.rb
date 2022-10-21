Rails.application.routes.draw do
  get '/home/index', to: 'home#index'
  root 'home#index'
  resources :subscripts, only: [:new, :create, :index]
end
