Rails.application.routes.draw do
  resources :poets
  resources :tokens
  resources :messages
  get '/auth/:provider/callback', to: 'sessions#create'

  get 'sessions/destroy'

  resources :tweets
  resources :places
  resources :firebase
  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
