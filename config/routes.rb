Rails.application.routes.draw do
  resources :products
  root 'products#index'
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'products/create'
  get 'products/edit'
  get 'products/update'
  get 'products/destroy'

  #mount API => '/api/products'
  #mount Products::ProductsAPI => '/api/products'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
