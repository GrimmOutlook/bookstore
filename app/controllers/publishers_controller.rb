class PublishersController < ApplicationController
  def new
    @page_title = "Add a Publisher:"
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(publisher_params)

    if @publisher.save
      flash[:notice] = "Publisher Created!"
      redirect_to publishers_path
    else
      render 'new'
    end

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
    def publisher_params
      params.require(:publisher).permit(:name)
    end

end
