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
end
