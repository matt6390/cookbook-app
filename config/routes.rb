Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  
  get "/one_recipe_url" => 'recipes#one_recipe_method'
  get "/recipes" => 'recipes#index'
  post "/recipes" => 'recipes#create'
  get "/recipes/:id" => 'recipes#show'
  patch "/recipes/:id" => 'recipes#update'
  delete "/recipes/:id" => 'recipes#destroy'

  post "/users" => 'users#create'
end
