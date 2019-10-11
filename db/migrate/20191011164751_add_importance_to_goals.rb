class AddImportanceToGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :importance, :integer
  end
end
