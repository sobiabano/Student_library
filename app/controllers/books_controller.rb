class BooksController < ApplicationController
  def index
    @books = Book.order(:title)
    @last_book = Book.find_by(id: session[:last_book_id])
  end

  def show
  end

  def read
  end
end
