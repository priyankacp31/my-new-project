Rails.application.routes.draw do
  devise_for :users
  
  resources :workers
  resources :companies
  resources :books
  #resources :employees

  resources :employees do
    collection do
      get 'preview'
    end
    end

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # manual-based routing
  get "account/dashboard"
  
  # Defines the root path route ("/")
  # root "articles#index"
end
