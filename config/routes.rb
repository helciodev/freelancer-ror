Rails.application.routes.draw do
  devise_for :users, controllers: {
     confirmations: 'users/confirmations', registrations: 'users/registrations'
  }

  resources :profiles, only: [:new, :create, :edit, :update]
  resources :user_profile_page, only: [:index], path: 'perfil_usuario', as: 'profile'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.


  # Defines the root path route ("/")
  root "home#index"


end
