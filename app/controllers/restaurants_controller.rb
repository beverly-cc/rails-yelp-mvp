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

  end

  def create
    # add new restaurant to db
  end
end
