class BooksController < ApplicationController
  def new
    @page_title = "Add a Book:"
    @book = Book.new
    @category = Category.new
    @author = Author.new
    @publisher = Publisher.new
  end

  def create
  end

  def update
  end

  def edit
  end

  def index
  end

  def show
  end

  def destroy
  end

  private
    def book_params
      params.require(:book).permit(:title, :category_id, :author_id, :publisher_id, :isbn, :year, :price, :buy, :excerpt, :format, :pages)
    end

end
