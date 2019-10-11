class CreateJournalEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :journal_entries do |t|
      t.belongs_to :user, foreign_key: true
      t.date :date
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
