class Api::AuthorsController < ActionController::API
	  include ActionController::Serialization

	def index
		authors = Author.all
		render json: authors, each_serializer: AuthorSerializer, status: :ok
	end

	def show
		author = Author.find(params[:id])
		render json: author, serializer: AuthorSerializer, status: :ok
	end

end