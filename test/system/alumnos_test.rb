require "application_system_test_case"

class AlumnosTest < ApplicationSystemTestCase
  setup do
    @alumno = alumnos(:one)
  end

  test "visiting the index" do
    visit alumnos_url
    assert_selector "h1", text: "Alumnos"
  end

  test "should create alumno" do
    visit alumnos_url
    click_on "New alumno"

    fill_in "Address", with: @alumno.address
    fill_in "Dni", with: @alumno.dni
    fill_in "Edad", with: @alumno.edad
    fill_in "Email", with: @alumno.email
    fill_in "Lastname", with: @alumno.lastname
    fill_in "Name", with: @alumno.name
    click_on "Create Alumno"

    assert_text "Alumno was successfully created"
    click_on "Back"
  end

  test "should update Alumno" do
    visit alumno_url(@alumno)
    click_on "Edit this alumno", match: :first

    fill_in "Address", with: @alumno.address
    fill_in "Dni", with: @alumno.dni
    fill_in "Edad", with: @alumno.edad
    fill_in "Email", with: @alumno.email
    fill_in "Lastname", with: @alumno.lastname
    fill_in "Name", with: @alumno.name
    click_on "Update Alumno"

    assert_text "Alumno was successfully updated"
    click_on "Back"
  end

  test "should destroy Alumno" do
    visit alumno_url(@alumno)
    click_on "Destroy this alumno", match: :first

    assert_text "Alumno was successfully destroyed"
  end
end
