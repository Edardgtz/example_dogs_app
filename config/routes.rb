Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/dogs" => "dogs#index"
    get "/dogs/:id" => "dogs#show"
    post "/dogs" => "dogs#create"
    patch "/dogs/:id" => "dogs#update"
    delete "/dogs/:id" => "dogs#destroy"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"
  end
end
