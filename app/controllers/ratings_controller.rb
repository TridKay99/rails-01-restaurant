class RatingsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @rating = @restaurant.rating.create(review_params)
    redirect_to restaurant_path(@restaurant.id)
  end

  private
    def rating_params
      params.permit(:title, :content, :rating)
    end
end
