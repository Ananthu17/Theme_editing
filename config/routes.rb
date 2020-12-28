Rails.application.routes.draw do
  root to: "homes#index"
  get 'homes/index'
  get 'homes/test'
  resources :logos
  resources :texts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
