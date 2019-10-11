class Inspiration < ApplicationRecord
  has_many :favorite_inspirations
  has_many :users, through: :favorite_inspirations
end
