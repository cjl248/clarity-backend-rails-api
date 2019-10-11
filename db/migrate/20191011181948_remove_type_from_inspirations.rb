class RemoveTypeFromInspirations < ActiveRecord::Migration[5.2]
  def change
    remove_column :inspirations, :type, :string
  end
end
