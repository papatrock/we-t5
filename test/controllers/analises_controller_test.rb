require "test_helper"

class AnalisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @analise = analises(:one)
  end

  test "should get index" do
    get analises_url
    assert_response :success
  end

  test "should get new" do
    get new_analise_url
    assert_response :success
  end

  test "should create analise" do
    assert_difference("Analise.count") do
      post analises_url, params: { analise: { analise: @analise.analise, jogo_id: @analise.jogo_id, nota: @analise.nota } }
    end

    assert_redirected_to analise_url(Analise.last)
  end

  test "should show analise" do
    get analise_url(@analise)
    assert_response :success
  end

  test "should get edit" do
    get edit_analise_url(@analise)
    assert_response :success
  end

  test "should update analise" do
    patch analise_url(@analise), params: { analise: { analise: @analise.analise, jogo_id: @analise.jogo_id, nota: @analise.nota } }
    assert_redirected_to analise_url(@analise)
  end

  test "should destroy analise" do
    assert_difference("Analise.count", -1) do
      delete analise_url(@analise)
    end

    assert_redirected_to analises_url
  end
end
