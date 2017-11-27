class MiembrosController < ApplicationController
  before_action :set_miembro, only: [:show, :update, :destroy]

  # GET /miembros
  def index
    @miembros = Miembro.where(:sucursal_id => params[:sucursal_id])

    render json: @miembros
  end

  # GET /miembros/1
  def show
    render json: @miembro
  end

  # POST /miembros
  def create
    @miembro = Miembro.new(nombre: params[:nombre],masculino: params[:masculino],activo: params[:activo],sucursal_id: params[:sucursal_id],fechaingreso: params[:fechaingreso])

    if @miembro.save
      render json: @miembro, status: :created, location: @miembro
    else
      render json: @miembro.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /miembros/1
  def update
    if @miembro.update(nombre: params[:nombre],masculino: params[:masculino],activo: params[:activo],sucursal_id: params[:sucursal_id],fechaingreso: params[:fechaingreso])
      render json: @miembro
    else
      render json: @miembro.errors, status: :unprocessable_entity
    end
  end

  # DELETE /miembros/1
  def destroy
    @miembro.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_miembro
      @miembro = Miembro.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    # def miembro_params
    #
    #   params.require(:miembro).permit(:nombre, :masculino, :activo, :sucursal_id, :fechaingreso)
    # end
end
