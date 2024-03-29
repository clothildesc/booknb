class Book < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :status, inclusion: { in: ['available', 'booked'] }
end
