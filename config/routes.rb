Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  get 'home/index'
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  resources :votes, only: [:create]
 
    resources :polls
 
  root :to => 'home#index'
  #root to: 'polls#index'  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
