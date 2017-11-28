class SucursalsController < ApplicationController
  before_action :set_sucursal, only: [:show, :update, :destroy]

  # GET /sucursals
  def index
    @sucursals = Sucursal.all

    render json: @sucursals
  end

  # GET /sucursals/1
  def show
    render json: @sucursal
  end

  # POST /sucursals
  def create
    @sucursal = Sucursal.new(ubicacion: params[:ubicacion])

    if @sucursal.save
      render json: @sucursal, status: :created, location: @sucursal
    else
      render json: @sucursal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sucursals/1
  def update
    if @sucursal.update(ubicacion: params[:ubicacion])
      render json: @sucursal
    else
      render json: @sucursal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sucursals/1
  def destroy
    @sucursal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sucursal
      @sucursal = Sucursal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sucursal_params
      params.require(:sucursal).permit(:ubicacion)
    end
end
