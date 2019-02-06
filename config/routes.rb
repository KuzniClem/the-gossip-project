Rails.application.routes.draw do
  root 'static_pages#home'
  get 'team', to: 'static_pages#team'
  get 'contact', to: 'static_pages#contact'
  resources :gossips
  resources :users, only: [:show] do
  	resources :welcome, only: [:index]
  end
end
