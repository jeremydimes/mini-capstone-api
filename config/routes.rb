Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  post "/orders" => "orders#create"
  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"

  get "/products" => "products#index"
  post "/products" => "products#create"
  get "products/:id" => "products#show"

  patch "/recipes/:id" => "recipes#update"
  delete "/recipes/:id" => "recipes#destroy"
end
