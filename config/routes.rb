Rails.application.routes.draw do
  devise_for :users
  resources :tribes, except: [:destroy] do
    member do
      delete :destroy_tribe
    end
  end

  resources :mies
  # get 'home/index'
  get 'home/about'
  root "home#index" # root route
  get "up" => "rails/health#show", as: :rails_health_check
end