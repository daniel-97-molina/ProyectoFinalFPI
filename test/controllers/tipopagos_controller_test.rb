require 'test_helper'

class TipopagosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipopago = tipopagos(:one)
  end

  test "should get index" do
    get tipopagos_url, as: :json
    assert_response :success
  end

  test "should create tipopago" do
    assert_difference('Tipopago.count') do
      post tipopagos_url, params: { tipopago: { monto: @tipopago.monto, nombre: @tipopago.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show tipopago" do
    get tipopago_url(@tipopago), as: :json
    assert_response :success
  end

  test "should update tipopago" do
    patch tipopago_url(@tipopago), params: { tipopago: { monto: @tipopago.monto, nombre: @tipopago.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy tipopago" do
    assert_difference('Tipopago.count', -1) do
      delete tipopago_url(@tipopago), as: :json
    end

    assert_response 204
  end
end
