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
#  facebook_link      :string
#  gender             :string
#  github_link        :string
#  hometown           :string
#  key_skills         :string
#  language_known     :string
#  linkedin_link      :string
#  marital_status     :string
#  permanent_address  :string
#  phone_no           :string
#  pincode            :string
#  state              :string
#  summary            :string
#  twitter_link       :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :bigint
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#
class Profile < ApplicationRecord
    belongs_to :user
    has_rich_text :summary
    has_one_attached :avatar
    has_one_attached :resume
    has_many :work_experience
    accepts_nested_attributes_for :work_experience, allow_destroy: true, reject_if: :all_blank
  

    GENDER = [
        "Male",
        "Female",
        "Transgender"
    ].freeze

    MARITAL_STATUS = [
        "Single/Unmarried",
        "Married",
        "Widowed",
        "Divorced",
        "Seperated",
        "Other"
    ].freeze

    DESIRED_EMPLOYMENT = [
        "Contract",
        "Full-time"
      ]
      
    DESIRED_SALARY = [
    "30,000 - 35,000",
    "35,000 - 40,000",
    "40,000 - 50,000",
    "50,000 - 60,000",
    "60,000 - 70,000",
    "70,000 - 80,000",
    "80,000 - 90,000",
    "80,000 - 100,000",
    "100,000 - 120,000",
    "120,000 - 130,000",
    "130,000 - 140,000",
    "140,000 - 150,000",
    "150,000 - 160,000",
    "160,000 - 170,000",
    "170,000 - 180,000",
    "180,000 - 190,000",
    "190,000 - 200,000",
    "200,000 - 210,000",
    "210,000 - 220,000",
    "Greater then 220,000"
    ]
    YEARS_OF_EXPERIENCE_RANGE = ["1", "2", "3", "4", "5", "6", "7", "8","9", "more than 10"]
end
