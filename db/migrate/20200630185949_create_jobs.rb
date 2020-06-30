class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.string :date
      t.string :link
      t.string :status

      t.timestamps
    end
  end
end
