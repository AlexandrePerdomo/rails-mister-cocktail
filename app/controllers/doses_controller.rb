class DosesController < ApplicationController
  before_action :set_doses, only: [:edit, :update, :destroy]

  def show
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def edit
  end

  def create
    @dose = Dose.new(doses_params)
    cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = cocktail
    if @dose.save
      redirect_to cocktail_path(cocktail)
    else
      redirect_to new_cocktail_dose_path
    end
  end

  def update
  end

  def destroy
    @dose.destroy
    redirect_to cocktails_path
  end

  private

    def set_doses
      @dose = Dose.find(params[:cocktail_id])
    end

    def doses_params
      params.require(:dose).permit(:description, :ingredient_id)
    end
end
