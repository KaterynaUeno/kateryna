Rails.application.routes.draw do
  resources :organisations
  devise_for :users
  root "home#index"
end
