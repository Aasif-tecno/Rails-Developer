# == Schema Information
#
# Table name: profiles
#
#  id                 :bigint           not null, primary key
#  desired_employment :string
#  desired_location   :string
#  desired_salary     :string
#  dob                :date
#  experience         :string
#  gender             :string
#  hometown           :string
#  key_skills         :string
#  language_known     :string
#  marital_status     :string
#  permanent_address  :string
#  pincode            :string
#  summary            :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :bigint
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#
require "test_helper"

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
