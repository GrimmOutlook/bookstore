class AuthorsController < ApplicationController
  def new
    @page_title = "Add an Author:"
    @author = Author.new
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
      params.require(:author).permit(:first_name, :last_name)
    end
end
