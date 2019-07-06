require "application_system_test_case"

class TipoSuelosTest < ApplicationSystemTestCase
  setup do
    @tipo_suelo = tipo_suelos(:one)
  end

  test "visiting the index" do
    visit tipo_suelos_url
    assert_selector "h1", text: "Tipo Suelos"
  end

  test "creating a Tipo suelo" do
    visit tipo_suelos_url
    click_on "New Tipo Suelo"

    fill_in "Nombre", with: @tipo_suelo.nombre
    click_on "Create Tipo suelo"

    assert_text "Tipo suelo was successfully created"
    click_on "Back"
  end

  test "updating a Tipo suelo" do
    visit tipo_suelos_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @tipo_suelo.nombre
    click_on "Update Tipo suelo"

    assert_text "Tipo suelo was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo suelo" do
    visit tipo_suelos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo suelo was successfully destroyed"
  end
end
