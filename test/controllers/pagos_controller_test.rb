require 'test_helper'

class PagosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pago = pagos(:one)
  end

  test "should get index" do
    get pagos_url, as: :json
    assert_response :success
  end

  test "should create pago" do
    assert_difference('Pago.count') do
      post pagos_url, params: { pago: { empleado: @pago.empleado, fecha: @pago.fecha, miembro: @pago.miembro, tipopago: @pago.tipopago } }, as: :json
    end

    assert_response 201
  end

  test "should show pago" do
    get pago_url(@pago), as: :json
    assert_response :success
  end

  test "should update pago" do
    patch pago_url(@pago), params: { pago: { empleado: @pago.empleado, fecha: @pago.fecha, miembro: @pago.miembro, tipopago: @pago.tipopago } }, as: :json
    assert_response 200
  end

  test "should destroy pago" do
    assert_difference('Pago.count', -1) do
      delete pago_url(@pago), as: :json
    end

    assert_response 204
  end
end
