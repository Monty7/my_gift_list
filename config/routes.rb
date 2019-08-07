Rails.application.routes.draw do
  resources :lists
  resources :list_items
  #resources :items

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories, only: [:index] do
    resources :items, only: [:index]
  end
  # get '/categories' => 'categories#index'
  # get '/categories/:id/items/:item_id' =>  'items#index'
end
