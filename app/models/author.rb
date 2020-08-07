class Author < ApplicationRecord
	has_many :author_books
	has_many :books, through: :author_books, :dependent => :delete_all
end
