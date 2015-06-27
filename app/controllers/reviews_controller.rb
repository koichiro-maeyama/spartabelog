class ReviewsController < ApplicationController
  def new

    @shop = Shop.find(params[:shop_id])
    @review = Review.new

  end
  def create
    @review = Review.new(
      shop_id: params[:shop_id],
      user_id: current_user.id,
      body: review_params["body"],
      score: review_params["score"]
    )
    if @review.save
      redirect_to shop_url(@review.shop)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:body,:score)
  end

end
