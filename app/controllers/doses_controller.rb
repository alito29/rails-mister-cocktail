class DosesController < ApplicationController

  def new
    #@cocktail = Cocktail.find(id: cocktail_url)
    @dose = Dose.new(cocktail_id: @cocktail.id, ingredient_id: @ingredient.id)
  end

  def create
    set_dose
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to new_cocktail_dose_path(@dose)
    else
      render 'new'
    end

  end

  def destroy
    @dose.delete
  end


  def dose_params
    params.require(:dose).permit(:description)
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end
end
