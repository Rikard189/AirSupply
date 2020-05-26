class WorkersController < ApplicationController
  before_action :set_worker, only: [:edit, :update]
  before_action :authenticate_user!

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

  def edit ;end

  def update
    if @worker.update(worker_params)
      redirect_to workers_path
    else
      render 'edit'
    end
  end

  private 

  def set_worker
    @worker = Worker.find(params[:id])
  end

  def worker_params
    params.require(:worker).permit(
      :nombre_completo, :nss, :rfc, :curp, :tel, 
      :fecha_nacimiento, :fecha_ingreso, :sdi, 
      :sd, :sex, :job, :avatar, {identification: []},
      :proof_address, :banorte_contract, :email,
      :imss_discharge_notice, :work_contract, :status,
      :infonavit_retention_notice, :imss_format,
      :marital_status, :employee_number, :cel,
      :street, :outdoor_number, :interior_number, 
      :town, :cp, beneficiary_attributes: [ 
        :nombre_completo, :parentesco, :fecha_nacimiento,
        :street, :outdoor_number, :interior_number, :town,
        :cp
      ]
    )
  end 
end
