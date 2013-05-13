Building::Application.routes.draw do
  # Routes for the Contractor resource:
  # CREATE
  get '/contractors/new', controller: 'contractors', action: 'new', as: 'new_contractor'
  post '/contractors', controller: 'contractors', action: 'create'

  # READ
  get '/contractors', controller: 'contractors', action: 'index', as: 'contractors'
  get '/contractors/:id', controller: 'contractors', action: 'show', as: 'contractor'

  # UPDATE
  get '/contractors/:id/edit', controller: 'contractors', action: 'edit', as: 'edit_contractor'
  put '/contractors/:id', controller: 'contractors', action: 'update'

  # DELETE
  delete '/contractors/:id', controller: 'contractors', action: 'destroy'
  #------------------------------

  # Routes for the Project resource:
  # CREATE
  get '/projects/new', controller: 'projects', action: 'new', as: 'new_project'
  post '/projects', controller: 'projects', action: 'create'

  # READ
  get '/projects', controller: 'projects', action: 'index', as: 'projects'
  get '/projects/:id', controller: 'projects', action: 'show', as: 'project'

  # UPDATE
  get '/projects/:id/edit', controller: 'projects', action: 'edit', as: 'edit_project'
  put '/projects/:id', controller: 'projects', action: 'update'

  # DELETE
  delete '/projects/:id', controller: 'projects', action: 'destroy'
  #------------------------------

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
