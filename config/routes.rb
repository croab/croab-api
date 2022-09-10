Rails.application.routes.draw do
  namespace :api do
    get 'products/index'
    get 'products/show'
    # get 'products/index'
    # get 'products/show'
    resources :products, only: [:index, :show, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
