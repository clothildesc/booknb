class BookingsController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
    @booking = Booking.new
  end

  def create
    @book = Book.find(params[:book_id])
    @booking = Booking.new(booking_params)
    @booking.book = @book
    if @booking.save
      redirect_to book_path(@book)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to book_path(@booking.book), status: :see_other
  end

  def booking_params
    params.require(:booking).permit(:user_id, :book_id, :start_date, :end_date)
  end
end
