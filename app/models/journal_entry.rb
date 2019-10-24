class JournalEntry < ApplicationRecord
  belongs_to :user

  validates :title, :date, :content, presence: true
  
end
