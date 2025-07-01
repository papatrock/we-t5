require "test_helper"

class MarcadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marcador = marcadors(:one)
  end

  test "should get index" do
    get marcadors_url
    assert_response :success
  end

  test "should get new" do
    get new_marcador_url
    assert_response :success
  end

  test "should create marcador" do
    assert_difference("Marcador.count") do
      post marcadors_url, params: { marcador: { descricao: @marcador.descricao, nome: @marcador.nome } }
    end

    assert_redirected_to marcador_url(Marcador.last)
  end

  test "should show marcador" do
    get marcador_url(@marcador)
    assert_response :success
  end

  test "should get edit" do
    get edit_marcador_url(@marcador)
    assert_response :success
  end

  test "should update marcador" do
    patch marcador_url(@marcador), params: { marcador: { descricao: @marcador.descricao, nome: @marcador.nome } }
    assert_redirected_to marcador_url(@marcador)
  end

  test "should destroy marcador" do
    assert_difference("Marcador.count", -1) do
      delete marcador_url(@marcador)
    end

    assert_redirected_to marcadors_url
  end
end
