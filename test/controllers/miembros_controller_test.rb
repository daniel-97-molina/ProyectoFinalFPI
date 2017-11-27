require 'test_helper'

class MiembrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @miembro = miembros(:one)
  end

  test "should get index" do
    get miembros_url, as: :json
    assert_response :success
  end

  test "should create miembro" do
    assert_difference('Miembro.count') do
      post miembros_url, params: { miembro: { activo: @miembro.activo, fechaingreso: @miembro.fechaingreso, masculino: @miembro.masculino, nombre: @miembro.nombre, sucursal_id: @miembro.sucursal_id } }, as: :json
    end

    assert_response 201
  end

  test "should show miembro" do
    get miembro_url(@miembro), as: :json
    assert_response :success
  end

  test "should update miembro" do
    patch miembro_url(@miembro), params: { miembro: { activo: @miembro.activo, fechaingreso: @miembro.fechaingreso, masculino: @miembro.masculino, nombre: @miembro.nombre, sucursal_id: @miembro.sucursal_id } }, as: :json
    assert_response 200
  end

  test "should destroy miembro" do
    assert_difference('Miembro.count', -1) do
      delete miembro_url(@miembro), as: :json
    end

    assert_response 204
  end
end
