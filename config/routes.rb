Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  resources :votes, only: [:create]
 
    resources :polls
 
  root :to => 'home#index'
  #root to: 'polls#index'  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
