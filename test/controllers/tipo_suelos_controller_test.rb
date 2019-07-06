require 'test_helper'

class TipoSuelosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_suelo = tipo_suelos(:one)
  end

  test "should get index" do
    get tipo_suelos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_suelo_url
    assert_response :success
  end

  test "should create tipo_suelo" do
    assert_difference('TipoSuelo.count') do
      post tipo_suelos_url, params: { tipo_suelo: { nombre: @tipo_suelo.nombre } }
    end

    assert_redirected_to tipo_suelo_url(TipoSuelo.last)
  end

  test "should show tipo_suelo" do
    get tipo_suelo_url(@tipo_suelo)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_suelo_url(@tipo_suelo)
    assert_response :success
  end

  test "should update tipo_suelo" do
    patch tipo_suelo_url(@tipo_suelo), params: { tipo_suelo: { nombre: @tipo_suelo.nombre } }
    assert_redirected_to tipo_suelo_url(@tipo_suelo)
  end

  test "should destroy tipo_suelo" do
    assert_difference('TipoSuelo.count', -1) do
      delete tipo_suelo_url(@tipo_suelo)
    end

    assert_redirected_to tipo_suelos_url
  end
end
