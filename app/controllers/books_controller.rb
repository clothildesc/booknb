class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @books = Book.all
    if user_signed_in?
      @users = User.near(current_user.address, 3)
    else
      @users = User.all
    end

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end

    if params[:query].present?
      sql_subquery = <<~SQL
        books.title @@ :query
        OR books.author @@ :query
      SQL
      @books = @books.where(sql_subquery, query: params[:query])
    end
  end

  def show
    @booking = Booking.new
    @book = Book.find(params[:id])
    @user = @book.user
    @marker =
      {
        lat: @user.latitude,
        lng: @user.longitude
      }
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
      redirect_to book_path(@book), notice: "Book was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:user_id, :title, :author, :summary, :year, :isbn_number, :book_picture, :editor, :status, :photo)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
