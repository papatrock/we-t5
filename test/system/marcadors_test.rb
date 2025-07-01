require "application_system_test_case"

class MarcadorsTest < ApplicationSystemTestCase
  setup do
    @marcador = marcadors(:one)
  end

  test "visiting the index" do
    visit marcadors_url
    assert_selector "h1", text: "Marcadors"
  end

  test "should create marcador" do
    visit marcadors_url
    click_on "New marcador"

    fill_in "Descricao", with: @marcador.descricao
    fill_in "Nome", with: @marcador.nome
    click_on "Create Marcador"

    assert_text "Marcador was successfully created"
    click_on "Back"
  end

  test "should update Marcador" do
    visit marcador_url(@marcador)
    click_on "Edit this marcador", match: :first

    fill_in "Descricao", with: @marcador.descricao
    fill_in "Nome", with: @marcador.nome
    click_on "Update Marcador"

    assert_text "Marcador was successfully updated"
    click_on "Back"
  end

  test "should destroy Marcador" do
    visit marcador_url(@marcador)
    click_on "Destroy this marcador", match: :first

    assert_text "Marcador was successfully destroyed"
  end
end
