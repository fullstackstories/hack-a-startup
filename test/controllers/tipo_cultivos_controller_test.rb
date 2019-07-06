require 'test_helper'

class TipoCultivosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_cultivo = tipo_cultivos(:one)
  end

  test "should get index" do
    get tipo_cultivos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_cultivo_url
    assert_response :success
  end

  test "should create tipo_cultivo" do
    assert_difference('TipoCultivo.count') do
      post tipo_cultivos_url, params: { tipo_cultivo: { nombre: @tipo_cultivo.nombre } }
    end

    assert_redirected_to tipo_cultivo_url(TipoCultivo.last)
  end

  test "should show tipo_cultivo" do
    get tipo_cultivo_url(@tipo_cultivo)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_cultivo_url(@tipo_cultivo)
    assert_response :success
  end

  test "should update tipo_cultivo" do
    patch tipo_cultivo_url(@tipo_cultivo), params: { tipo_cultivo: { nombre: @tipo_cultivo.nombre } }
    assert_redirected_to tipo_cultivo_url(@tipo_cultivo)
  end

  test "should destroy tipo_cultivo" do
    assert_difference('TipoCultivo.count', -1) do
      delete tipo_cultivo_url(@tipo_cultivo)
    end

    assert_redirected_to tipo_cultivos_url
  end
end
