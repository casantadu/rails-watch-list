class Bookmark < ApplicationRecord
  validates :movie_id, :list_id, presence: true, uniqueness: { scope: :list_id }
  validates :comment, length: { minimum: 6 }
  belongs_to :movie
  belongs_to :list
end
