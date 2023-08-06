Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/supermarket/:id"=>"supermarkets#show"
  get "/supermarket" => "supermarkets#index"
  post "/supermarket"=>"supermarkets#create"
  patch "/supermarket/:id" => "supermarkets#update"
  delete "supermarket/:id" => "supermarkets#destroy"


  # Defines the root path route ("/")
  # root "articles#index"
end
