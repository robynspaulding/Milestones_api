Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/users" => "users#create"

  #family_tree routes
  resources :family_trees

  #kids routes
  resources :kids

  #milestones routes
  resources :milestones

  #photos routes
  resources :photos
end
