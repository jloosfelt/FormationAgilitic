ActionController::Routing::Routes.draw do |map|
  map.namespace :admin do |admin|
    admin.resources :categories do |category|
      category.resources :products
    end
    admin.root :controller => 'categories'
  end                                  
  
  map.resources :categories
  map.resources :products
  
  map.root :controller => 'categories'
end
