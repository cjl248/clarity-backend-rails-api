class User < ApplicationRecord
  attr_accessor :password

  has_secure_password

  has_many :journal_entries
  has_many :goals
  has_many :meditation_sessions

  has_many :favorite_inspirations
  has_many :inspirations, through: :favorite_inspirations

  validates :username, uniqueness: {case_sensitive: false}

end
