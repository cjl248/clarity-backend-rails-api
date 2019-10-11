class AddConsequenceToGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :consequence, :string
  end
end
