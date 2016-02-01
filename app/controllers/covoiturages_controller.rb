class CovoituragesController < ApplicationController

def new
end

def create
end


def index
    @covoiturage = Covoiturage.all
  end

def show
    @covoiturage = Covoiturage.find(params[:id])
    @review = Review.new
end


end
