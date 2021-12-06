Rails.application.routes.draw do
  resources :shifts
  resources :organisations
  devise_for :users
  root "home#index"
end
