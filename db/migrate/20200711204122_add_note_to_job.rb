class AddNoteToJob < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :note, :string
  end
end
