Rails.application.routes.draw do
  root 'shops#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :shops
end
