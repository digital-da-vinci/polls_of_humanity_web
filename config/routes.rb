Rails.application.routes.draw do
  root 'static_pages#home'
  match '/api/post_answer', to: 'api#post_answer', via: 'post'
  match '/api/get_question', to: 'api#get_question', via: 'get'
  match '/api/get_results', to: 'api#get_results', via: 'get'
  match '/admin', to: 'admins#home', via: 'get'
  match '/admin/new', to: 'admins#new', via: 'get'
  match '/admin/create', to: 'admins#create_admin', via: 'post'
  match '/admin/create_question', to:'admins#create_question', via: 'post'
  match '/admin/edit_question', to: 'admins#edit_question', via: 'get'
  match '/admin/update_question', to: 'admins#update_question', via: 'post'
  match '/admin/login', to: 'admins#login', via: 'get'
  match '/admin/login_attempt', to: 'admins#login_attempt', via: 'post'
  match '/admin/logout', to: 'admins#logout', via: 'get'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
