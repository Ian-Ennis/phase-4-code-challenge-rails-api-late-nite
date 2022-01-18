Rails.application.routes.draw do
  resources :appearances, only: [:create]
  resources :guests, only: [:index]

  resources :episodes, only: [:index, :show] do
    resources :guests, only: [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
