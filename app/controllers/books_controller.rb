class BooksController < ApplicationController
	def index #Index se usa para listar los registros de los libros
		@books = Book.all
	end

	def show #Show se usa para mostrar los detalles del registro
		@book = Book.find(params[:id])
	end

	def new
  	@book = Book.new
	end

	def create
	  @book = Book.new(book_params)

	  if @book.save
	    redirect_to @book
	  else
	    render :new
	  end
	end

	def edit
  	@book = Book.find(params[:id])
	end

	def update
	  @book = Book.find(params[:id])

	  if @book.update(book_params)
	    redirect_to @book
	  else
	    render :edit
	  end
	end

	def destroy
	  book = Book.find(params[:id])
	  book.destroy

		flash[:notice] = "El libro ha iso eliminado exitosamente"
		redirect_to books_path
	end

	private
  def book_params
    params.require(:book).permit(:title, :author, :description, :image_url, :publication_date, :price)
  end
end
