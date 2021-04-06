json.extract! profile, :id, :summary, :key_skills, :experience, :desired_location, :desired_employment, :desired_salary, :language_known, :gender, :marital_status, :dob, :hometown, :pincode, :permanent_address, :created_at, :updated_at
json.url profile_url(profile, format: :json)
