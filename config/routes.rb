Rails.application.routes.draw do
  devise_for :users

  resources :spreads do
    resources :slots, except: [:index, :show]
    resources :readings
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "spreads#index"
end
