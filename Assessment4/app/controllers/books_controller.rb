class BooksController < ApplicationController

    def index
        @book = Book.all
    end 

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            redirect_to books_url
        else
            render :new
        end 
    end 

    def edit
        @book = Book.find(params[:id])
    end 

    def update
        @book = Book.find(params[:id])

        if @book.update_attributes(book_params)
            redirect_to '/books/#{@book.id}'
        else
            render :edit
        end 

    end 

    def destroy
        @book = Book.find(params[:id])
        @book.destroy

        redirect_to books_path

    end 

    def about 
        :about
    end 

    def our_mission
        :our_mission
    end 


    def show
        @book = Book.find(params[:id])
    end 

     

    private 
    def book_params
        params.require(:book).permit(:author, :title, :category, :year, :isbn)
    end 
end
