Rails.application.routes.draw do
  
  namespace :api do
    get "/games" => "games#index"
    post "/games" => "games#create"
    get "/games/:id" => "games#show"
    patch "/games/:id" => "games#update"
    delete "/games/:id" => "games#destroy"
  end
  
end
