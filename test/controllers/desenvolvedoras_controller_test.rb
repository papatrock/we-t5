require "test_helper"

class DesenvolvedorasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @desenvolvedora = desenvolvedoras(:one)
  end

  test "should get index" do
    get desenvolvedoras_url
    assert_response :success
  end

  test "should get new" do
    get new_desenvolvedora_url
    assert_response :success
  end

  test "should create desenvolvedora" do
    assert_difference("Desenvolvedora.count") do
      post desenvolvedoras_url, params: { desenvolvedora: { nome: @desenvolvedora.nome } }
    end

    assert_redirected_to desenvolvedora_url(Desenvolvedora.last)
  end

  test "should show desenvolvedora" do
    get desenvolvedora_url(@desenvolvedora)
    assert_response :success
  end

  test "should get edit" do
    get edit_desenvolvedora_url(@desenvolvedora)
    assert_response :success
  end

  test "should update desenvolvedora" do
    patch desenvolvedora_url(@desenvolvedora), params: { desenvolvedora: { nome: @desenvolvedora.nome } }
    assert_redirected_to desenvolvedora_url(@desenvolvedora)
  end

  test "should destroy desenvolvedora" do
    assert_difference("Desenvolvedora.count", -1) do
      delete desenvolvedora_url(@desenvolvedora)
    end

    assert_redirected_to desenvolvedoras_url
  end
end
