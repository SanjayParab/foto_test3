FotoTest3::Application.routes.draw do  |map|

  resources :users

  resources :galleries

  resources :albums

  resources :phots

  resources :sessions, :only => [:new, :create, :destroy]

  # Resource Relationships
     resources :users do
        resources :galleries do
           resources :albums do
              resources :phots
            end
        end
     end

  # Route Maps
  #map.connect 'albums/create/:id' , :controller => "albums" , :action => "create"
  #map.connect 'albums/new/:id' , :controller => "albums" , :action => "new"
  #map.connect 'albums/show/:id' , :controller => "albums" , :action => "show"
  #map.connect 'albums/delete/:id' , :controller => "albums" , :action => "destroy"
  ##map.connect '', :controller => "albums", :action => "index"
  #map.connect 'music', :controller => "albums", :action => "index"

  #map.connect ':controller/:action/:id'


  #match '/about',   :to => 'pages#about'
  #match '/home' ,   :to => 'home#index'
  #match '/contact', :to => 'pages#contact'
  #match  '/gallery', :to => 'galleries#index'
  #
  #
  ## Relation between uses & galleries
  ##map.resources :users do |users|
  ##  users.resources :galleries
  ##end
  #
  #get "sessions/new"
  #
  #match '/register',  :to => 'users#new'


  #get "home/index"

  #Static Routing
  get "pages/home"
  get "pages/contact"
  get "pages/about"
  get "pages/register"
  #
  #get "users/new"
  #
  #get "galleries/index"
  #
  #get "galleries/new"
  #
  #get  "galleries/show"



  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.

   root :to => "home#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
