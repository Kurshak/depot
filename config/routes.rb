Rails.application.routes.draw do

  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :pictures

  resources :users

  scope '(:locale)' do
    root 'store#index'
    resources :orders
    resources :line_items
    resources :carts
    get 'store/index', as: 'store', via: :all
    resources :products do
      get :who_bought, on: :member
    end
    resources :reviews
  end
  end