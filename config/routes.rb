Rails.application.routes.draw do 

  resources :apartments 
    

  
   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get '/apartments/:apartment_id/tenants', to: 'tenants#index_by_apartment'
  get '/apartment/:apartment_id/leases', to: 'leases#index_by_apartment'
  

end