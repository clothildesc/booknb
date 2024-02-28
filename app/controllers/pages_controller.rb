class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
  end

  def dashboard
    @books = Book.where(user: current_user)
    @bookings = Booking.where(user: current_user)
  end

end
