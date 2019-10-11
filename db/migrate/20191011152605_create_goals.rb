class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.belongs_to :user, foreign_key: true
      t.string :objective
      t.string :difficulty
      t.string :reward
      t.boolean :completed

      t.timestamps
    end
  end
end
