Rails.application.routes.draw do
  resources :commitments
  resources :thought_leaders
  resources :user_actions
  resources :actions
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
