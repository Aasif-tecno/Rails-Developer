# == Schema Information
#
# Table name: jobs
#
#  id                  :bigint           not null, primary key
#  company_name        :string
#  company_website     :string
#  compensation_range  :string
#  compensation_type   :string
#  deleted_at          :datetime
#  estimated_hours     :string
#  featured            :boolean          default(FALSE)
#  headquarters        :string
#  link_to_apply       :string
#  price               :integer
#  published_at        :datetime
#  remote              :boolean          default(FALSE)
#  role_type           :string
#  slug                :string
#  status              :string           default("pending")
#  title               :string
#  upsell_type         :string
#  years_of_experience :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :bigint           not null
#
# Indexes
#
#  index_jobs_on_deleted_at  (deleted_at)
#  index_jobs_on_slug        (slug) UNIQUE
#  index_jobs_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Job < ApplicationRecord
  acts_as_paranoid
  extend FriendlyId
  friendly_id :title, use: :slugged

  # relations
  belongs_to :user
  has_rich_text :description
  has_rich_text :company_description
  has_one_attached :company_logo
  validates :title,:description,:company_name,:company_description,:link_to_apply, presence: true
   
  
  #scopes
  scope :desc, -> { order(published_at: :desc)}
  scope :pending, -> { where(status: JOB_STATUSES[:pending]) }
  scope :published, -> { where(status: JOB_STATUSES[:published]) }
  scope :archived, -> { where(status: JOB_STATUSES[:archived]) }



  # contants
  COMPENSATION_TYPE = [
    "Contract",
    "Freelance",
    "Part-time",
    "Full-time"
  ]
  
  COMPENSATION_RANGE = [
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

  JOB_STATUSES = {
    pending: "pending",
    published: "published",
    archived: "archived"
  }.freeze

  HOURLY_RANGE = [
    "less then 10",
    "10-30",
    "30-60",
    "60-90",
    "more than 100",
  ].freeze
  
  YEARS_OF_EXPERIENCE_RANGE = ["1", "2", "3", "4", "5", "6", "7", "8","9", "more than 10"]
  
  def pending?
    self.status == Job::JOB_STATUSES[:pending]
  end

  def published?
    self.status == Job::JOB_STATUSES[:published]
  end
  
  def archived?
    self.status == Job::JOB_STATUSES[:archived]
  end
  
  def badge_color
    case status
    when 'pending'
      'secondary'
    when 'archive'
      'info'
    when 'published'
      'success'
    end
  end
  def should_generate_new_friendly_id?
    if !slug?
      title_changed?
    else
      false
    end
  end
  
  def self.search(search)
    if search 
      search.downcase!
      where(["slug LIKE ? OR LOWER(company_name) LIKE ? ","%#{search}%","%#{search}%"])
    end
  end 
  
end
