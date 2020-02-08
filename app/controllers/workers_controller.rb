class WorkersController < ApplicationController
  def index
    @workers = Worker.all
  end

  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.new(worker_params)
    if @worker.save
      redirect_to workers_path
    else
      render 'new'
    end
  end

  private 

  def worker_params
    params.require(:worker).permit(
      :nombre, :nss, :rfc, :curp, :tel, :cel, 
      :fecha_nacimiento, :fecha_ingreso, :sdi, 
      :sd, :avatar, {identification: []}
    )
  end 
end
