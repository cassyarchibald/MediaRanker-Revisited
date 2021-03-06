Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'works#root'
  delete "/logout", to: "sessions#logout", as: "logout"
  # get '/login', to: 'sessions#login_form', as: 'login'
  # post '/login', to: 'sessions#login'
  # post '/logout', to: 'sessions#logout', as: 'logout'

  resources :works
  post '/works/:id/upvote', to: 'works#upvote', as: 'upvote'
  get "/auth/:provider/callback", to: "sessions#create", as: 'auth_callback'
  resources :users, only: [:index, :show]
end
