class EmpleadosController < ApplicationController
  before_action :set_empleado, only: [:show, :update, :destroy]

  # GET /empleados
  def index
    @empleados = Empleado.where(:sucursal_id => params[:sucursal_id])

    render json: @empleados
  end

  # GET /empleados/1
  def show
    render json: @empleado
  end

  # POST /empleados
  def create
    @empleado = Empleado.new(codigo: params[:codigo],nombre: params[:nombre],sucursal_id: params[:sucursal_id],contrasena: params[:contrasena])

    if @empleado.save
      render json: @empleado, status: :created, location: @empleado
    else
      render json: @empleado.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /empleados/1
  def update
    if @empleado.update(codigo: params[:codigo],nombre: params[:nombre],sucursal_id: params[:sucursal_id],contrasena: params[:contrasena])
      render json: @empleado
    else
      render json: @empleado.errors, status: :unprocessable_entity
    end
  end

  # DELETE /empleados/1
  def destroy
    @empleado.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empleado
      @empleado = Empleado.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    # def empleado_params
    #   params.require(:empleado).permit(:codigo, :nombre, :sucursal_id, :contrasena)
    # end
end
