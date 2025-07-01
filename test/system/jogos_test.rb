require "application_system_test_case"

class JogosTest < ApplicationSystemTestCase
  setup do
    @jogo = jogos(:one)
  end

  test "visiting the index" do
    visit jogos_url
    assert_selector "h1", text: "Jogos"
  end

  test "should create jogo" do
    visit jogos_url
    click_on "New jogo"

    fill_in "Ano", with: @jogo.ano
    fill_in "Desenvolvedora", with: @jogo.desenvolvedora_id
    fill_in "Genero", with: @jogo.genero
    fill_in "Nome", with: @jogo.nome
    fill_in "Plataforma", with: @jogo.plataforma
    click_on "Create Jogo"

    assert_text "Jogo was successfully created"
    click_on "Back"
  end

  test "should update Jogo" do
    visit jogo_url(@jogo)
    click_on "Edit this jogo", match: :first

    fill_in "Ano", with: @jogo.ano
    fill_in "Desenvolvedora", with: @jogo.desenvolvedora_id
    fill_in "Genero", with: @jogo.genero
    fill_in "Nome", with: @jogo.nome
    fill_in "Plataforma", with: @jogo.plataforma
    click_on "Update Jogo"

    assert_text "Jogo was successfully updated"
    click_on "Back"
  end

  test "should destroy Jogo" do
    visit jogo_url(@jogo)
    click_on "Destroy this jogo", match: :first

    assert_text "Jogo was successfully destroyed"
  end
end
