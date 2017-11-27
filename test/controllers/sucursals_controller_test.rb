require 'test_helper'

class SucursalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sucursal = sucursals(:one)
  end

  test "should get index" do
    get sucursals_url, as: :json
    assert_response :success
  end

  test "should create sucursal" do
    assert_difference('Sucursal.count') do
      post sucursals_url, params: { sucursal: { ubicacion: @sucursal.ubicacion } }, as: :json
    end

    assert_response 201
  end

  test "should show sucursal" do
    get sucursal_url(@sucursal), as: :json
    assert_response :success
  end

  test "should update sucursal" do
    patch sucursal_url(@sucursal), params: { sucursal: { ubicacion: @sucursal.ubicacion } }, as: :json
    assert_response 200
  end

  test "should destroy sucursal" do
    assert_difference('Sucursal.count', -1) do
      delete sucursal_url(@sucursal), as: :json
    end

    assert_response 204
  end
end
