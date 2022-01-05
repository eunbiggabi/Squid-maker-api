Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope 'api'do
    get '/cards', to: 'cards#index'
    post '/cards', to: 'cards#create'
    get '/cards/:id', to: 'cards#show'
    put '/cards/:id', to: 'cards#update'
    delete '/cards/:id', to: 'cards#destroy'
    scope 'auth'do
      post 'sign_up', to: 'users#create'
      post 'log_in', to: 'users#log_in'
    end
  end
end
