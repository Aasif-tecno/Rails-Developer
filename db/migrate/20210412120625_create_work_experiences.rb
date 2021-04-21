class CreateWorkExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :work_experiences do |t|
      t.string :company_name
      t.string :job_position
      t.string :location
      t.date :date_from
      t.date :date_to
      t.string :description
      t.integer :profile_id
      t.timestamps
    end
  end
end
