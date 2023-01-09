class EnterprisesController < ApplicationController
  before_action :find_enterprise, only: [:show, :edit, :update, :destroy]

  def index
    @enterprises = Enterprise.all
  end

  def show; end

  def edit; end

  def new
    @enterprise = Enterprise.new
  end

  def update
    @enterprise = Enterprise.find(params[:id])
    @enterprise.update(name: params[:enterprise][:name], address: params[:enterprise][:address], email: params[:enterprise][:email], cellphone: params[:enterprise][:cellphone])
    redirect_to @enterprise
  end

  def create
    @enterprise = Enterprise.create(name: params[:enterprise][:name], address: params[:enterprise][:address], email: params[:enterprise][:email], cellphone: params[:enterprise][:cellphone])
    render json: @enterprise
  end

  def destroy
    @enterprise.destroy
    redirect_to root_path
  end

  def find_enterprise
    @enterprise = Enterprise.find(params[:id])
  end
end
