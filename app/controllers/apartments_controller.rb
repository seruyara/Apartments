# app/controllers/apartments_controller.rb
class ApartmentsController < ApplicationController
  before_action :set_apartment, only: [:show, :update, :destroy]

  def index
    @apartments = Apartment.all
    render json: @apartments
  end

  def show
    render json: @apartment
  end

  def create
    @apartment = Apartment.new(apartment_params)
    if @apartment.save
      render json: @apartment, status: :created
    else
      render json: { error: @apartment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if @apartment.update(apartment_params)
      render json: @apartment
    else
      render json: { error: @apartment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @apartment.destroy
    head :no_content
  end

  def create_tenant
    @tenant = @apartment.tenants.build(tenant_params)
    if @tenant.save
      render json: @tenant, status: :created
    else
      render json: { error: @tenant.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update_tenant
    @tenant = Tenant.find(params[:tenant_id])
    if @tenant.update(tenant_params)
      render json: @tenant
    else
      render json: { error: @tenant.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy_tenant
    @tenant = Tenant.find(params[:tenant_id])
    @tenant.destroy
    head :no_content
  end

  private

  def set_apartment
    @apartment = Apartment.find(params[:id])
  end

  def apartment_params
    params.require(:apartment).permit(:number)
  end

  def tenant_params
    params.require(:tenant).permit(:name, :age)
  end
end
