class BooksController < ApplicationController
  def new
    @page_title = "Add a Book:"
    @book = Book.new
    @category = Category.new
    @author = Author.new
    @publisher = Publisher.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      flash[:notice] = 'Book Added'
      redirect_to books_path
    else
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def index
    @books = Book.all
    @categories = Category.all
  end

  def show
    @book = Book.find(params[:id])
    @categories = Category.all
  end

  def destroy
  end

  private
    def book_params
      params.require(:book).permit(:title, :category_id, :author_id, :publisher_id, :isbn, :year, :coverpath, :excerpt, :format, :pages, :price, :buy)
    end

end
