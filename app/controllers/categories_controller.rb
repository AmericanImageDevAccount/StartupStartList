class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @categories = Category.all.order("created_at DESC")
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category, notice: "Sucessfully Saved New Category"
    else
      render 'new'
    end

  end

  def update
    if @category.update(category_params)
      redirect_to @category
    else
      render 'edit'
    end

  end

  def delete
  end

  def destroy
    @category.destroy
    redirect_to categories_path, notice: "Successfully removed category"
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:category_name)
  end


end
