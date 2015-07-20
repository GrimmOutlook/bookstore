class CategoriesController < ApplicationController
  def new
    @page_title = "Add a Category:"
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:notice] = "Category Created!"
      redirect_to categories_path
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
    @category = Category.find(params[:id])
    @categories = Category.all
    @books =  @category.books
  end

  def destroy
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
