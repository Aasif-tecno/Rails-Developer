class AddDeletedAtToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :deleted_at, :datetime
    add_index :jobs, :deleted_at
  end
end
