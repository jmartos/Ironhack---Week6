Rails.application.routes.draw do
 get "/", to: "site#home", as: "root"
 get "/users", to: "users#index"
 get "/users/new", to: "users#new"
 post "/users/:id/destroy", to:"users#destroy"
 get "/users/:id", to: "users#show"
 post "/users", to: "users#create"

 get "/products", to: "products#index"
 get "/users/:user_id/products", to: "products#show"
 get "/users/:user_id/products/new", to: "products#new" 
 post "/users/:user_id/products", to: "products#create", as: "user_products"
end
