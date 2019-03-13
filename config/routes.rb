
Rails.application.routes.draw do
 
 
 
  
 
  get 'cards/show'
  resources :products

  resources :shops, only:[:index, :show]
  resources :order_items
  resource :cards, only:[:show]

 

  
  root to: "shops#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
 
 
 
  
  
  get 'cards/show'
  resources :products

  resources :shops, only:[:index, :show]
  resources :order_items
  resource :cards, only:[:show]

  resources :sessions, only: [:new, :create, :destroy]
 

  
  root to: "home#index"

end
