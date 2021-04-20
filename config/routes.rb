Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      resources :recipes, :recipies, :ingredients, :cuisines, :users
    end
  end
end
