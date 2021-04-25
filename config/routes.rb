Rails.application.routes.draw do
  get 'clients/index'
  devise_for :clients
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "login#index"

  get '/clients/new', to: 'clients#new'
  post '/clients', to: 'clients#create'


  namespace :user do
    root :to => "welcome#index"
  end
end
