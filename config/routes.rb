Rails.application.routes.draw do
  
  devise_for :users
  resources :categories
  resources :products do 
    resources :reports
    end 
  root 'welcome#index'
  get 'welcome/index'
  get 'products/index'
  get 'categories/new'
  get 'orders/myorder'
  resources :charges
  resources :contactadmins
  get 'contactadmins/new'


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
