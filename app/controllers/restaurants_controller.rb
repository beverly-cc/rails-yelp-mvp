class RestaurantsController < ApplicationController
  def index
    # show all
    @restaurants = Restaurant.all
  end

  def show
    # show one restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    # collect info for new restaurant
    @restaurant = Restaurant.new
  end

  def create
    # add new restaurant to db
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
