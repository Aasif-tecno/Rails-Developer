require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "creating a Profile" do
    visit profiles_url
    click_on "New Profile"

    fill_in "Desired employment", with: @profile.desired_employment
    fill_in "Desired location", with: @profile.desired_location
    fill_in "Desired salary", with: @profile.desired_salary
    fill_in "Dob", with: @profile.dob
    fill_in "Experience", with: @profile.experience
    fill_in "Gender", with: @profile.gender
    fill_in "Hometown", with: @profile.hometown
    fill_in "Key skills", with: @profile.key_skills
    fill_in "Language known", with: @profile.language_known
    fill_in "Marital status", with: @profile.marital_status
    fill_in "Permanent address", with: @profile.permanent_address
    fill_in "Pincode", with: @profile.pincode
    fill_in "Summary", with: @profile.summary
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "updating a Profile" do
    visit profiles_url
    click_on "Edit", match: :first

    fill_in "Desired employment", with: @profile.desired_employment
    fill_in "Desired location", with: @profile.desired_location
    fill_in "Desired salary", with: @profile.desired_salary
    fill_in "Dob", with: @profile.dob
    fill_in "Experience", with: @profile.experience
    fill_in "Gender", with: @profile.gender
    fill_in "Hometown", with: @profile.hometown
    fill_in "Key skills", with: @profile.key_skills
    fill_in "Language known", with: @profile.language_known
    fill_in "Marital status", with: @profile.marital_status
    fill_in "Permanent address", with: @profile.permanent_address
    fill_in "Pincode", with: @profile.pincode
    fill_in "Summary", with: @profile.summary
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile" do
    visit profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile was successfully destroyed"
  end
end
