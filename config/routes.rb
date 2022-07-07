Rails.application.routes.draw do
  get "/", to: "restaurants#index"
  resources :restaurants, only: [ :new, :create, :index, :show ] do
    resources :reviews, only: [ :new, :create ]
  end
end
