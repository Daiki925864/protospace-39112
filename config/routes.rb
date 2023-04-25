Rails.application.routes.draw do
  root to: "prototypes#index"
  resources :users, only: [:edit, :update]
end
