Wcauditbs2::Application.routes.draw do
  resources :inventory_transactions

  resources :inventory_items

  resources :invoice_items

  resources :invoices

  resources :customers

  resources :vendors

 resources :products
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
  
	match '/wc/edit/:id', :to => 'wc#edit', :as => :edit_audit
	match '/wc/save_form', :to => 'wc#save_form', :as => :save_form
	match '/wc/audits', :to=> 'wc#audit11to12', :as => :home
	match '/vendors', :to=> 'vendors#index', :as => :vendors
	match '/products', :to=> 'products#index', :as => :products
	match '/inventory_items', :to=> 'inventory_items#index', :as => :inventory_items
	match '/inventory_transactions', :to=> 'inventory_transactions#index', :as => :inventory_transactions
	match '/customers', :to=> 'customers#index', :as => :customers
	match '/invoices', :to=> 'invoices#index', :as => :invoices
	match '/invoice_items', :to=> 'invoice_items#index', :as => :invoice_items
end
