Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/cards', to: 'cards#index'
  post '/cards', to: 'cards#create'
  get '/cards/:id', to: 'cards#show'
  put '/cards/:id', to: 'cards#update'
  delete '/cards/:id', to: 'cards#destroy'

  # resources :cards
end
