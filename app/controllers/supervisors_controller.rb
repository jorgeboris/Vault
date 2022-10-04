class SupervisorsController < ApplicationController
  def new
    @supervisor = Supervisor.new
    @supervisor.name = 'Demo'
  end

  def create
    @supervisor = Supervisor.create(name: params[:supervisor][:name])
    render json: @supervisor
  end
end
