Rails.application.routes.draw do
  resources :acitivity_tags
  resources :tags
  resources :comments
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  
  get 'meetup/index'
  controller :users do
    get 'signup' => :new
    post 'signup' => :create
  end
  resources :attends
  resources :users
  resources :activities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'meetup#index', as: 'meetup'
end
