require "test_helper"

class JogosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jogo = jogos(:one)
  end

  test "should get index" do
    get jogos_url
    assert_response :success
  end

  test "should get new" do
    get new_jogo_url
    assert_response :success
  end

  test "should create jogo" do
    assert_difference("Jogo.count") do
      post jogos_url, params: { jogo: { ano: @jogo.ano, desenvolvedora_id: @jogo.desenvolvedora_id, genero: @jogo.genero, nome: @jogo.nome, plataforma: @jogo.plataforma } }
    end

    assert_redirected_to jogo_url(Jogo.last)
  end

  test "should show jogo" do
    get jogo_url(@jogo)
    assert_response :success
  end

  test "should get edit" do
    get edit_jogo_url(@jogo)
    assert_response :success
  end

  test "should update jogo" do
    patch jogo_url(@jogo), params: { jogo: { ano: @jogo.ano, desenvolvedora_id: @jogo.desenvolvedora_id, genero: @jogo.genero, nome: @jogo.nome, plataforma: @jogo.plataforma } }
    assert_redirected_to jogo_url(@jogo)
  end

  test "should destroy jogo" do
    assert_difference("Jogo.count", -1) do
      delete jogo_url(@jogo)
    end

    assert_redirected_to jogos_url
  end
end
