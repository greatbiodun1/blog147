Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts
  devise_for :users, controllers:{
  }
  get 'home/index'
  
  devise_scope :user do
    get '/signout', to: 'devise/sessions#destroy', as: :signout
  end

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end