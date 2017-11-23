class CocktailsController < ApplicationController
  def new
    @cocktail = Cocktail.new
    @dose = Dose.new
    @ingredientsa = Ingredient.all
    @ingredients = []
    @ingredientsa.each do |ingredient|
      @ingredients << [ingredient.name, ingredient.id]
    end
  end

  def create

    hash = {
      name: params["name"]
    }
    a = Cocktail.create(hash)

    for i in (1..3) do
      if params["description_dose#{i}"] != ""
        hashdose = {
          description: params["description_dose#{i}"],
          cocktail: a,
          ingredient: Ingredient.find(params["ingredient#{i}"])
        }
        Dose.create(hashdose)
      end
    end
    redirect_to cocktails_path
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def index
    @cocktails = Cocktail.all
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def restaurant_params
    params.permit("ingredient3", "ingredient1", "ingredient2", "description_dose2", "description_dose1", "description_dose3", "name")
  end

end
