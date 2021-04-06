class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :summary
      t.string :key_skills
      t.string :experience
      t.string :desired_location
      t.string :desired_employment
      t.string :desired_salary
      t.string :language_known
      t.string :gender
      t.string :marital_status
      t.date :dob
      t.string :hometown
      t.string :pincode
      t.string :permanent_address
      t.references :user
      t.timestamps
    end
  end
end
