Rails.application.routes.draw do
  resources :restaurants, only: [ :new, :create, :index, :show ] do
    resources :reviews, only: [ :new, :create ]
  end
end

# Create restaurant - new
# Create restaurant - create
# Read all - index
# Read one - show
  # Create review for restaurant - new
  # Create review to restaurant - create
