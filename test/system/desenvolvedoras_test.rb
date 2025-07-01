require "application_system_test_case"

class DesenvolvedorasTest < ApplicationSystemTestCase
  setup do
    @desenvolvedora = desenvolvedoras(:one)
  end

  test "visiting the index" do
    visit desenvolvedoras_url
    assert_selector "h1", text: "Desenvolvedoras"
  end

  test "should create desenvolvedora" do
    visit desenvolvedoras_url
    click_on "New desenvolvedora"

    fill_in "Nome", with: @desenvolvedora.nome
    click_on "Create Desenvolvedora"

    assert_text "Desenvolvedora was successfully created"
    click_on "Back"
  end

  test "should update Desenvolvedora" do
    visit desenvolvedora_url(@desenvolvedora)
    click_on "Edit this desenvolvedora", match: :first

    fill_in "Nome", with: @desenvolvedora.nome
    click_on "Update Desenvolvedora"

    assert_text "Desenvolvedora was successfully updated"
    click_on "Back"
  end

  test "should destroy Desenvolvedora" do
    visit desenvolvedora_url(@desenvolvedora)
    click_on "Destroy this desenvolvedora", match: :first

    assert_text "Desenvolvedora was successfully destroyed"
  end
end
