Rails.application.routes.draw do
  resources :apartments do
    post 'create_tenant', on: :member
    patch 'update_tenant', on: :member
    delete 'destroy_tenant', on: :member
  end
  resources :tenants
  resources :leases, only: [:create, :destroy]
end
