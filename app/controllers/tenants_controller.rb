class TenantsController < ApplicationController
  # GET /tenants
  def index
    tenant = Tenant.all
    render json: tenant, status: :ok
  end

  # GET /tenants/1
  def show
    tenant = Tenant.find(params[:id])
    render json: tenant, status: :ok
  end
  
end
