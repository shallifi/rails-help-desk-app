Rails.application.routes.draw do
  resources :teches
  resources :employees
  resources :tickets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/signup", to: "teches#create"
  get "/me", to: "teches#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # Defines the root path route ("/")
  # root "articles#index"
  get '/hello', to: 'application#hello_world'
end
