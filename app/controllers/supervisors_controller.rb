class SupervisorsController < ApplicationController
  def show
    @supervisor = Supervisor.find(params[:id])
  end

  def edit
    @supervisor = Supervisor.find(params[:id])
  end

  def update
    @supervisor = Supervisor.find(params[:id])
    @supervisor.update(name: params[:supervisor][:name], email: params[:supervisor][:email], cellphone: params[:supervisor][:cellphone])
    redirect_to @supervisor
  end

  def new
    @supervisor = Supervisor.new
    @supervisor.name = 'Demo'
  end

  def create
    @supervisor = Supervisor.create(name: params[:supervisor][:name])
    render json: @supervisor
  end
end
