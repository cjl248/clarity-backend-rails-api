class CreateMeditationSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :meditation_sessions do |t|
      t.belongs_to :user, foreign_key: true
      t.date :date
      t.integer :length
      t.string :category

      t.timestamps
    end
  end
end
