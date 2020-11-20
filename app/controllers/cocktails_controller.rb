class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]

  def home
  end

  def index
    @new_cocktail = Cocktail.new
    @cocktails = Cocktail.all.reverse
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(params_cocktail)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  private
  def params_cocktail
    params.require(:cocktail).permit(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
