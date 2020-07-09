require 'test_helper'

class SubsidiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subsidio = subsidios(:one)
  end

  test "should get index" do
    get subsidios_url
    assert_response :success
  end

  test "should get new" do
    get new_subsidio_url
    assert_response :success
  end

  test "should create subsidio" do
    assert_difference('Subsidio.count') do
      post subsidios_url, params: { subsidio: { bases: @subsidio.bases, cierre: @subsidio.cierre, descripcion: @subsidio.descripcion, inicio: @subsidio.inicio, institucion: @subsidio.institucion, modalidad: @subsidio.modalidad, monto: @subsidio.monto, nombre: @subsidio.nombre, perfil: @subsidio.perfil } }
    end

    assert_redirected_to subsidio_url(Subsidio.last)
  end

  test "should show subsidio" do
    get subsidio_url(@subsidio)
    assert_response :success
  end

  test "should get edit" do
    get edit_subsidio_url(@subsidio)
    assert_response :success
  end

  test "should update subsidio" do
    patch subsidio_url(@subsidio), params: { subsidio: { bases: @subsidio.bases, cierre: @subsidio.cierre, descripcion: @subsidio.descripcion, inicio: @subsidio.inicio, institucion: @subsidio.institucion, modalidad: @subsidio.modalidad, monto: @subsidio.monto, nombre: @subsidio.nombre, perfil: @subsidio.perfil } }
    assert_redirected_to subsidio_url(@subsidio)
  end

  test "should destroy subsidio" do
    assert_difference('Subsidio.count', -1) do
      delete subsidio_url(@subsidio)
    end

    assert_redirected_to subsidios_url
  end
end
