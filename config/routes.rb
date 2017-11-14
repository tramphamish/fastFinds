Rails.application.routes.draw do
get "/" =>  "fast_food_chains#index"
get "/fast_food_chains/:id" => "fast_food_chains#show"
get "/posts" => "posts#index"

get "/signup" => "users#new"
post "/users" => "users#create"
get "/users/:id" => "users#show"
get "/users/:id/edit" => "users#edit"
patch "/users/:id" => "users#update"

get "/login" => "sessions#new"
post "/login" => "sessions#create"
get "/logout" => "sessions#destroy"
end
