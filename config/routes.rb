Rails.application.routes.draw do

  root 'application#hello'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/secrets', to: 'secrets#show'
  post '/logout' => 'sessions#destroy'
end
