Rails.application.routes.draw do
  devise_for :customers, controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
  devise_for :admins



  get 'public/customers/:id/unsubscribe' => 'public/customers#unsubscribe', as: 'unsubscribe'
  patch 'public/customers/:id/withdraw' => 'public/customers#withdraw', as: 'withdraw'


   resources :admins
   namespace :admin do
    resources :items
   end
   namespace :admin do
     resources :orders
   end
   namespace :admin do
     resources :customers
   end
   namespace :admin do
     resources :genres
   end
   namespace :admin do
     get '/' => 'homes#top'
   end
  namespace :public do
    get '/' => 'homes#top'
  end
  namespace :public do
    resources :shipping_address
  end
  namespace :public do
    resources :orders
  end
  namespace :public do
    resources :cart_items
  end
  namespace :public do
    resources :customers
  end
  namespace :public do
    resources :homes
  end

  namespace :public do
    resources :items
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'public/homes#top'
end
