class CategoriesController < ApplicationController

  def index 
    @category = Category.all 
  end 

  def show 
    @category = Category.find(params[:id])
  end 

  def new 
    @category = Category.new
  end 

  def create 
    @category = Category.create(name: params[:category][:name], category_id: params[:category][:category_id])

    if @category.save 
      redirect_to category_url(@category)
    else 
      render :new
    end  
  end 

  def edit 
    @category = Category.find(params[:id])
  end 

  def update 
    @category = Category.find(params[:id])

    if @category.update(name: params[:category][:name], category_id: params[:category][:category_id])
      redirect_to category_url(@category)
    else 
      render :new, status: :unprocessable_entity
    end 
  end 

  def destroy 
    @category = Category.find(params[:id])
    @category.destroy 
    redirect_to root_path status: :see_other
  end 

  private 
    def category_params 
      params.requrire(:category).permit(:name, :category_id)
    end 

end
