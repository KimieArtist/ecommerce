Rails.application.routes.draw do
  
  get 'my_orders' => 'orders#my_orders'
  
  # get 'orders/index'

  # get 'cart/add_to_cart'
  #
  # get 'cart/view_order'
  #
  # get 'cart/checkout'
  
  
  post 'add_to_cart' => 'cart#add_to_cart'
  post 'order_complete' => 'cart#order_complete'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'
  
  
  delete 'delete_line_item' => 'cart#delete_line_item'
  
  delete 'cancel_checkout' => 'cart#cancel_checkout'
  

  devise_for :users
  # get 'storefront/all_items'
  #
  # get 'storefront/items_by_category'
  #
  # get 'storefront/items_by_brand'

  root 'storefront#all_items'
  
  get 'categorical' => 'storefront#items_by_category'
  
  get 'branding' => 'storefront#items_by_brand'

  resources :categories
  resources :products
  
  # root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
