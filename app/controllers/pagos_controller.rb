class PagosController < ApplicationController
  before_action :set_pago, only: [:show, :update, :destroy]

  # GET /pagos
  def index
    @pagos = Pago.where(:miembro_id => params[:miembro_id])

    render json: @pagos
  end

  # GET /pagos/1
  def show
    render json: @pago
  end

  # POST /pagos
  def create
    @pago = Pago.new(fecha: params[:fecha],miembro_id: params[:miembro_id],empleado_id: params[:empleado_id],tipopago_id: params[:tipopago_id])

    if @pago.save
      render json: @pago, status: :created, location: @pago
    else
      render json: @pago.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pagos/1
  def update
    if @pago.update(fecha: params[:fecha],miembro_id: params[:miembro_id],empleado_id: params[:empleado_id],tipopago_id: params[:tipopago_id])
      render json: @pago
    else
      render json: @pago.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pagos/1
  def destroy
    @pago.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pago
      @pago = Pago.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    # def pago_params
    #   params.require(:pago).permit(:fecha, :miembro, :empleado, :tipopago)
    # end
end
