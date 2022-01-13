class BooksController < ApplicationController
  def index
    @books = Book.search(params[:search]).order("created_at DESC")
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @books = Book.new
  end

  def create
    @books = Book.create(book_params)
    redirect_to root_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if  @book.update(book_params)
      redirect_to root_path
    else
      render "edit"
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to root_path
  end

  private

  def book_params
    params.require(:book).permit(:title,
                                 :author,
                                 :genre,
                                 :classification,
                                 :types,
                                 :year,
                                 :id)
  end


end
