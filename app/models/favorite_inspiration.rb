class FavoriteInspiration < ApplicationRecord
  belongs_to :user
  belongs_to :inspiration
end
