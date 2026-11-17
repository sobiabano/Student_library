class Book < ApplicationRecord
  has_many :book_pages, ->{ order(:position)}, dependent: :destroy
  
  validates :title, presence: true
  validates :author, presence: true
end
