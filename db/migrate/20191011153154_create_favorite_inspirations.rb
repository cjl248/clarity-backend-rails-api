class CreateFavoriteInspirations < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_inspirations do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :inspiration, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
