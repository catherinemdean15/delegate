class AddAssigneeToTasks < ActiveRecord::Migration[6.1]
  def change
    add_reference :tasks, :assignee, foreign_key: true
  end
end
