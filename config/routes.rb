Rails.application.routes.draw do
  #resources :lists, only: [:new, :create]
  resources :users do
    resources :lists do
      resources :list_items, only: [:new, :edit, :update]
    end
  end
  #resources :items
  resources :list_items, only: [:create, :show, :edit, :update, :destroy]
  resources :lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories, only: [:index, :show] do
    resources :items, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  end
  get '/' => 'sessions#home'
  get '/signup' => 'users#new'
	get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  
  get '/auth/facebook/callback' =>'sessions#facebook_omni'
  post '/lists/:id' => 'lists#destroy'
  get '/logout' => 'sessions#destroy'
  post '/list/purchase' => 'lists#add_purchaser'
 # post '/list/remove' => 'list#destroy'
  #post '/categories/:id/items/new' => 'items#create'
  #post '/categories/:id/items/new' => 'list_items#create'
  # get '/categories' => 'categories#index'
  # get '/categories/:id/items/:item_id' =>  'items#index'
end
