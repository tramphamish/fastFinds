Rails.application.routes.draw do
get "/" =>  "fast_food_chains#index"
get "/fast_food_chains" => "fast_food_chains#show"
get "/signup" => "users#new"
post "/users" => "users#create"
get "/users/:id" => "products#show"
get "/login" => "sessions#new"
post "/login" => "sessions#create"
get "/logout" => "sessions#destroy"
end
