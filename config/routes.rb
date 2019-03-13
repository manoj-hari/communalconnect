Rails.application.routes.draw do
  resources :votes, only: [:create]
  resources :polls
  root to: 'polls#index'  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
