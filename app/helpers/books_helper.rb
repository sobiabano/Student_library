module BooksHelper
  def short_summary(book)
    truncate(book.summary.to_s, length: 115)
  end
end
