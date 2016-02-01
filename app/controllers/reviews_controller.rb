class ReviewsController < ApplicationController

def create
    @covoiturage = Covoiturage.find(params[:covoiturage_id])
    @review = Review.new(review_params)
    @review.covoiturage = @covoiturage
    if @review.save
      redirect_to covoiturage_path(@covoiturage)
    else
      render 'covoiturages/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end
