Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, except: [:index]
  resources :brands do
    resources :products, only: [:index]
  end
  resources :products do
    resources :reviews, only: [:create, :update]
  end

  resources :products
  resources :reviews
  get "/login", to: "sessions#login", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#logout", as: "logout"
  get "/auth/google_oauth2/callback", to: "sessions#google_omniauth"
  #match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post] 
end
