Rails.application.routes.draw do
get "/" =>  "fast_food_chains#index"
get "/fast_food_chains/:id" => "fast_food_chains#show"
get "/posts" => "posts#index"

get "/signup" => "users#new"
post "/users" => "users#create"
get "/user/:id" => "users#show"
get "/user/:id/edit" => "users#edit"
patch "/user/:id" => "users#update"

get "/login" => "sessions#new"
post "/login" => "sessions#create"
get "/logout" => "sessions#destroy"
end
