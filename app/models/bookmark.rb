class Bookmark < ApplicationRecord
  validates :movie_id, :list_id, presence: true
  validates :movie_id, uniqueness: { scope: [:movie_id, :list_id] }
  validates :comment, length: { minimum: 6 }
  belongs_to :movie
  belongs_to :list
end
