class BookPage < ApplicationRecord
  belongs_to :book

  validates :position, presence: true, uniqueness: { scope: :book_id }
  validates :heading, presence: true
  validates :content, presence: true
end
