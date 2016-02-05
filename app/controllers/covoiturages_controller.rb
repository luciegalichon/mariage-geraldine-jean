class CovoituragesController < ApplicationController

def new

end

def create
    @covoiturage = Covoiturage.new(covoit_params)
    @id = Covoiturage.all.count
    @review = Review.new

    if @covoiturage.save
      respond_to do |format|
        format.html { redirect_to covoiturages_path }
        format.js  # <-- will render `app/views/covoiturages/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'covoiturages/index' }
        format.js  # <-- idem
      end
    end
end


def index
    @covoiturages = Covoiturage.all
    @review = Review.new
    @covoiturage = Covoiturage.new
end

def show
    @covoiturage = Covoiturage.find(params[:id])
    @review = Review.new
end

 private

  def covoit_params
    params.require(:covoiturage).permit(:title, :description, :datea, :dater, :lieudep, :nbplace)
  end

end
