class ReviewsController < ApplicationController

def create

    @covoiturage = Covoiturage.find(params[:covoiturage_id])
    @review = Review.new(review_params)
    @review.covoiturage = @covoiturage
    @id=@covoiturage.id-1
    if @review.save
      respond_to do |format|
        format.html { redirect_to covoiturages_path }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'covoiturages/index' }
        format.js  # <-- idem
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :name)
  end

end
