Rails.application.routes.draw do
  resources :administrators
  resources :neighbors
  resources :machines
  resources :historicals
  resources :type_users
  resources :users
  resources :residentials
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
