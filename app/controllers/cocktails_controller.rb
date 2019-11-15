class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to root_path
    else
      render :new
    end
    # raise
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = Dose.where(cocktail_id: params[:id])
    # raise
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def capitalize_first_letter(str)
    str.split(' ').map { |e| e.downcase.capitalize }.join(' ')
  end
end