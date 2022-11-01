Rails.application.routes.draw do
  namespace :public do
    get 'shipping_address/index'
    get 'shipping_address/edit'
  end
  namespace :public do
    get 'orders/new'
    get 'orders/index'
    get 'orders/show'
  end
  namespace :public do
    get 'cart_items/index'
  end
  namespace :public do
    get 'customers/show'
    get 'customers/edit'
    get 'customers/update'
  end
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
  namespace :public do
    get 'item/show'
  end
  namespace :public do
    get 'items/show'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
