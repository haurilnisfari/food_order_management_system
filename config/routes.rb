Rails.application.routes.draw do

  root 'menu_items#index'

  resources :menu_items
  resources :categories
  resources :orders
  resources :customers
  resources :order_lines

end
