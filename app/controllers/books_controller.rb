class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]

  def index
    @books = Book.all
  end

  def show
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
    redirect_to books_path, status: :see_other
  end

  private

  def book_params
    params.require(:book).permit(:user_id, :title, :author, :summary, :year, :isbn_number, :book_picture, :editor, :status)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
