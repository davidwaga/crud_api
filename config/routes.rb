Rails.application.routes.draw do
  devise_for :users
  resources :products
  #root to: 'welcome#index'
  root 'products#index'
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'products/create'
  get 'products/edit'
  get 'products/update'
  get 'products/destroy'


  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      resources :products,only: [:index, :create, :show,:update,:edit]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
