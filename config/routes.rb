Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :orders
  get 'store/index'

  resources :products do
     get :who_bought, on: :member
  end

   # The priority is based upon order of creation:
   # (Приоритет основан на порядке создания:)
   # first created -> highest priority.
  # (создан первым -> наивысший приоритет.)
  # See how all your routes lay out with "rake routes".
  # (Раскладку всех маршрутов можно увидеть с помощью команды "rake routes".)

  # You can have the root of your site routed with "root"
  # (Корневой маршрут к вашему сайту можно получить с помощью "root")
  root to: 'store#index', as: 'store'
  # ...
end
