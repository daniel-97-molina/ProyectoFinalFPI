class TipopagosController < ApplicationController
  before_action :set_tipopago, only: [:show, :update, :destroy]

  # GET /tipopagos
  def index
    @tipopagos = Tipopago.all

    render json: @tipopagos
  end

  # GET /tipopagos/1
  def show
    render json: @tipopago
  end

  # POST /tipopagos
  def create
    @tipopago = Tipopago.new(tipopago_params)

    if @tipopago.save
      render json: @tipopago, status: :created, location: @tipopago
    else
      render json: @tipopago.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tipopagos/1
  def update
    if @tipopago.update(tipopago_params)
      render json: @tipopago
    else
      render json: @tipopago.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tipopagos/1
  def destroy
    @tipopago.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipopago
      @tipopago = Tipopago.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tipopago_params
      params.require(:tipopago).permit(:nombre, :monto)
    end
end
