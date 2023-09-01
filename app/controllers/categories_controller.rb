class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(name: params[:category][:name], category_id: params[:category][:category_id])
    
    if @category.save 
      redirect_to category_url(category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end
end
