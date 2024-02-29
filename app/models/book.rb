class Book < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  include PgSearch::Model
  pg_search_scope :search_by_title_and_author, against: %i[title author], using: {
    tsearch: { prefix: true }
  }
end
