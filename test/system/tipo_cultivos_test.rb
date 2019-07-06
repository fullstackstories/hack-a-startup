require "application_system_test_case"

class TipoCultivosTest < ApplicationSystemTestCase
  setup do
    @tipo_cultivo = tipo_cultivos(:one)
  end

  test "visiting the index" do
    visit tipo_cultivos_url
    assert_selector "h1", text: "Tipo Cultivos"
  end

  test "creating a Tipo cultivo" do
    visit tipo_cultivos_url
    click_on "New Tipo Cultivo"

    fill_in "Nombre", with: @tipo_cultivo.nombre
    click_on "Create Tipo cultivo"

    assert_text "Tipo cultivo was successfully created"
    click_on "Back"
  end

  test "updating a Tipo cultivo" do
    visit tipo_cultivos_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @tipo_cultivo.nombre
    click_on "Update Tipo cultivo"

    assert_text "Tipo cultivo was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo cultivo" do
    visit tipo_cultivos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo cultivo was successfully destroyed"
  end
end
