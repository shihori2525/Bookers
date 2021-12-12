class BooksController < ApplicationController

def show
end

def index
end


def create
  @book=Book.new(book_params)
  @book.save
  redirect_to book_path(@book)
end


private
def book_params
  params.permit(:title, :body)
end

end
