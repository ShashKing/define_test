class AddReferenceInAuthorBook < ActiveRecord::Migration[6.0]
  def change
  	add_reference :author_books, :author, foreign_key: true
  	add_reference :author_books, :book, foreign_key: true
  end
end
