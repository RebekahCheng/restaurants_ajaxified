class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
    # creating a review not saving it, so that simple form works
  end
end

