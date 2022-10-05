class SupervisorsController < ApplicationController
  def show
    @supervisor = Supervisor.find(params[:id])
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
