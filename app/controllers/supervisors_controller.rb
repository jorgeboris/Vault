class SupervisorsController < ApplicationController
  before_action :find_supervisor, only: [:show, :edit, :update, :destroy]

  def index
    @supervisors = Supervisor.all
  end

  def show; end

  def edit; end

  def update
    @supervisor.update(name: params[:supervisor][:name], email: params[:supervisor][:email], cellphone: params[:supervisor][:cellphone])
    redirect_to @supervisor
  end

  def new
    @supervisor = Supervisor.new
    @supervisor.name = 'Demo'
  end

  def create
    @supervisor = Supervisor.create(name: params[:supervisor][:name], email: params[:supervisor][:email], cellphone: params[:supervisor][:cellphone])
    render json: @supervisor
  end

  def destroy
    @supervisor.destroy
    redirect_to root_path
  end

  def find_supervisor
    @supervisor = Supervisor.find(params[:id])
  end
end
