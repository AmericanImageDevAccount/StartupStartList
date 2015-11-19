class CategoriesController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @locations = Location.all.order("created_at DESC")
  end

  def show
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to @location, notice: "Sucessfully Saved New Location"
    else
      render 'new'
    end

  end

  def update
    if @location.update(location_params)
      redirect_to @location
    else
      render 'edit'
    end

  end

  def delete
  end

  def destroy
    @location.destroy
    redirect_to locations_path, notice: "Successfully removed location"
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:location_name, :city, :state)
  end


end
