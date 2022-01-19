Rails.application.routes.draw do
  resources :episodes, only: [:index, :show, :destroy]
  resources :guests, only: [:index]
  resources :appearances, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
