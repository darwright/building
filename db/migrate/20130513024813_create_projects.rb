class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :description
      t.string :responsible
      t.string :priority
      t.string :status
      t.string :due_date
      t.string :reminder
    end
  end
end
