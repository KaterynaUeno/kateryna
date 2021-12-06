Rails.application.routes.draw do
  get 'shifts/index'
  get 'shifts/edit'
  resources :shifts
  resources :organisations
  devise_for :users
  root "home#index"
end
