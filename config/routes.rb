Rails.application.routes.draw do
  get 'user/show/:gossip_id', to: 'user#show', as: 'user_show'
  root 'index#home'
  get 'gossip/show/:gossip_id', to: 'gossip#show', as: 'gossip_show'
  get 'contact/show'
  get 'team/show'
  get 'index/welcome/:first_name', to: 'index#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
