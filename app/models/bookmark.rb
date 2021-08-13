class Bookmark < ApplicationRecord
  validates :comment, presence: true, length: { minimum: 6 }
  validates :list, presence: true
  validates :movie_id, uniqueness: { scope: :list_id, message: 'is already in the list' }
  belongs_to :movie
  belongs_to :list
end
