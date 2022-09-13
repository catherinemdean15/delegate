class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.datetime :reminder_time
      t.datetime :due_date
      t.boolean :text_reminder
      t.boolean :email_reminder

      t.timestamps
    end
  end
end
