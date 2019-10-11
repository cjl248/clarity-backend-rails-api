class AddContentToInspirations < ActiveRecord::Migration[5.2]
  def change
    add_column :inspirations, :content, :string
  end
end
