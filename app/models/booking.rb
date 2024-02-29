class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :book
  after_create :booked_book_status
  before_destroy :available_book_status

  def booked_book_status
    book.update!(status: "booked")
  end

  def available_book_status
    book.update!(status: "available")
  end
end
