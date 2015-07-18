class PublishersController < ApplicationController
  def new
    @page_title = "Add a Publisher:"
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
      params.require(:publisher).permit(:name)
    end

end
