# == Schema Information
#
# Table name: work_experiences
#
#  id           :bigint           not null, primary key
#  company_name :string
#  date_from    :date
#  date_to      :date
#  description  :string
#  job_position :string
#  location     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  profile_id   :integer
#
require "test_helper"

class WorkExperienceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
