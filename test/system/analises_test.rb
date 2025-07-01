require "application_system_test_case"

class AnalisesTest < ApplicationSystemTestCase
  setup do
    @analise = analises(:one)
  end

  test "visiting the index" do
    visit analises_url
    assert_selector "h1", text: "Analises"
  end

  test "should create analise" do
    visit analises_url
    click_on "New analise"

    fill_in "Analise", with: @analise.analise
    fill_in "Jogo", with: @analise.jogo_id
    fill_in "Nota", with: @analise.nota
    click_on "Create Analise"

    assert_text "Analise was successfully created"
    click_on "Back"
  end

  test "should update Analise" do
    visit analise_url(@analise)
    click_on "Edit this analise", match: :first

    fill_in "Analise", with: @analise.analise
    fill_in "Jogo", with: @analise.jogo_id
    fill_in "Nota", with: @analise.nota
    click_on "Update Analise"

    assert_text "Analise was successfully updated"
    click_on "Back"
  end

  test "should destroy Analise" do
    visit analise_url(@analise)
    click_on "Destroy this analise", match: :first

    assert_text "Analise was successfully destroyed"
  end
end
