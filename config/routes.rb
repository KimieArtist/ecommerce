Rails.application.routes.draw do
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
