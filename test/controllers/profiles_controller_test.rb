require "test_helper"

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { desired_employment: @profile.desired_employment, desired_location: @profile.desired_location, desired_salary: @profile.desired_salary, dob: @profile.dob, experience: @profile.experience, gender: @profile.gender, hometown: @profile.hometown, key_skills: @profile.key_skills, language_known: @profile.language_known, marital_status: @profile.marital_status, permanent_address: @profile.permanent_address, pincode: @profile.pincode, summary: @profile.summary } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { desired_employment: @profile.desired_employment, desired_location: @profile.desired_location, desired_salary: @profile.desired_salary, dob: @profile.dob, experience: @profile.experience, gender: @profile.gender, hometown: @profile.hometown, key_skills: @profile.key_skills, language_known: @profile.language_known, marital_status: @profile.marital_status, permanent_address: @profile.permanent_address, pincode: @profile.pincode, summary: @profile.summary } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
