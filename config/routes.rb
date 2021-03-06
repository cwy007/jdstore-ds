Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :products
    resources :orders do
      member do
        post :cancel
        post :ship
        post :shipped
        post :return
      end
    end
    resources :categories
    resources :recommends
  end

  resources :products do
    member do
      post :add_to_cart
    end
    resources :comments
  end

  resources :carts do
    collection do
      delete :clean
      post :checkout
    end
  end

  resources :cart_items

  resources :orders do
    member do
      post :pay_with_alipay
      post :pay_with_wechat
      post :apply_to_cancel
    end
  end

  namespace :account do
    resources :orders
  end
  root 'products#index'
  get '/welcome/', to: 'welcome#index'
end
