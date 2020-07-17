class AddRoleToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :role, :string
  end
end
