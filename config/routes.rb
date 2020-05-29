Rails.application.routes.draw do
  devise_for :users
  root to: 'vendors#index'
  # resources :products

  resources :vendors do
    resources :products
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
