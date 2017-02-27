Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  devise_for :users, :controllers => { :registrations => "user_registrations" }
  resources :users
  resources :products do
    resources :comments
  end
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  get 'static_pages/landing_page'

  post 'static_pages/thank_you'

  post 'payments/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
	root 'static_pages#index'

  mount ActionCable.server => '/cable'

	resources :orders, only: [:index, :show, :create, :destroy]

  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  root to: "products#index"

end
