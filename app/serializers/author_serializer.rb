class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :date_of_birth, :book_name

	  private
	  def book_name
	  	book_list = []
			AuthorBook.where(author_id: id).each do |authorbook|
				Book.where(id: authorbook.book_id).each do |book|
					book_list.append(book.book_title)
				end
	  	end
	  	return book_list
	  end
end
