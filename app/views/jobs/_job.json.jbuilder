json.extract! job, :id, :title, :link_to_apply, :description, :company_name, :company_website, :company_description, :role_type, :compersatino_range, :remote, :years_of_experience, :user_id, :created_at, :updated_at
json.url job_url(job, format: :json)
json.description job.description.to_s
json.company_description job.company_description.to_s
