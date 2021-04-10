class AddFieldsToProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :facebook_link, :string
    add_column :profiles, :twitter_link, :string
    add_column :profiles, :linkedin_link, :string
    add_column :profiles, :github_link, :string
    add_column :profiles, :phone_no, :string
    add_column :profiles, :state, :string

  end
end
