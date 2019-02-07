Rails.application.routes.draw do
  root 'static_pages#home'
  get 'team', to: 'static_pages#team'
  get 'contact', to: 'static_pages#contact'
  resources :gossips do
  	resources :likes, only: [:create, :destroy]
  end
  resources :users, only: [:new, :show, :create] do
  	resources :welcome, only: [:index]
  end
  resources :sessions, only: [:new, :create, :destroy]
end
