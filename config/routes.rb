Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root "/restaurants", to: "restaurants#index"
  root to: "restaurants#index"
  resources :restaurants do
    resources :reviews, only: [:create]
  end
end
