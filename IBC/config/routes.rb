Rails.application.routes.draw do

  resources :instructors
  #get 'calificacion/index'

  #get 'calificacion/show'

  #get 'calificacion/create'

  #get 'calificacion/edit'
  

  resources :calificacion

  get 'profesor' => 'alumnos#index'

  get 'profesor/new'

  get 'profesor/show'

  get 'profesor/destroy'

  get 'profesor/edit'

  resources :cuota
  get 'cuota/index'

  get 'cuota/new'



  get 'materia/index'

  #post '/profesor', :to => 'profesor#create', :as => :profesor

  resources :profesor
  #resources :profesors




  get 'asistencia' => 'asistencia#index'

  get 'asistencia/new'

  get 'asistencia/pasar'

 # get 'asistencia/update'

  post 'asistencia/update'

  get 'asistencia/destroy'

  get 'asistencia/show'

  get 'calificacion/index' #=>'calificacion#index'

  get 'calificacion/new'

  get 'calificacion/update'

  get 'calificacion/destroy'

  get 'calificacion/show'

  get 'alumnos' => 'alumnos#index'

  get 'alumnos/new'

  get 'alumnos/show'

  get 'alumnos/destroy'

  get 'alumnos/edit'



  #get 'instructor' => 'maestros#index'
  # get 'instructor/new' => 'maestros#new'
  #  get 'instructor/edit' => 'maestros#edit'
  
  resources :alumnos
  resources :curso
  resources :materia
  
  get '/computacion' => 'computacion#index'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'ibc' => 'principal#index'

  get 'usuario' => 'users#index'
  get 'signup' => 'users#new'
  resources :users

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'principal#index'

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
