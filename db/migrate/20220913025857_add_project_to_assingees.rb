class AddProjectToAssingees < ActiveRecord::Migration[6.1]
  def change
    add_reference :assignees, :project, foreign_key: true
  end
end
