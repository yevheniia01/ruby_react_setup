require "application_system_test_case"

class Entry2sTest < ApplicationSystemTestCase
  setup do
    @entry2 = entry2s(:one)
  end

  test "visiting the index" do
    visit entry2s_url
    assert_selector "h1", text: "Entry2s"
  end

  test "creating a Entry2" do
    visit entry2s_url
    click_on "New Entry2"

    fill_in "Calories", with: @entry2.calories
    fill_in "Carbs", with: @entry2.carbs
    fill_in "Fats", with: @entry2.fats
    fill_in "Meal type", with: @entry2.meal_type
    fill_in "Proteins", with: @entry2.proteins
    click_on "Create Entry2"

    assert_text "Entry2 was successfully created"
    click_on "Back"
  end

  test "updating a Entry2" do
    visit entry2s_url
    click_on "Edit", match: :first

    fill_in "Calories", with: @entry2.calories
    fill_in "Carbs", with: @entry2.carbs
    fill_in "Fats", with: @entry2.fats
    fill_in "Meal type", with: @entry2.meal_type
    fill_in "Proteins", with: @entry2.proteins
    click_on "Update Entry2"

    assert_text "Entry2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Entry2" do
    visit entry2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entry2 was successfully destroyed"
  end
end
