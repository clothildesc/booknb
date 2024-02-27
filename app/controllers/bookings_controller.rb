class BookingsController < ApplicationController

  def new
    @book = Book.find(params[:book_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @book = Book.find(params[:book_id])
    @booking.user = current_user
    @booking.book = @book
    if @booking.save
      @book.update(status: "booked")
      redirect_to book_path(@book)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @book = @booking.book
    @booking.destroy
    redirect_to book_path(@book), status: :see_other
  end

  def booking_params
    params.require(:booking).permit(:book_id, :start_date, :end_date)
  end
end
