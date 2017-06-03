class ReviewsController < ApplicationController
  # this allows anonymous reviews
  skip_before_action :authenticate_user!

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show'
    end
  end

  private

  def review_params
    # not sure about this line
    params.require(:review).permit(:content)
  end

end

