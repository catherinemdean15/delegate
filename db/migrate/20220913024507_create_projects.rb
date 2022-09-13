class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :completion_date
      t.string :description

      t.timestamps
    end
  end
end
