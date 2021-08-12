class Bookmark < ApplicationRecord
  validates :comment, presence: true, length: { minimum: 6 }
  validates :list, uniqueness: true
  belongs_to :movie
  belongs_to :list
end
