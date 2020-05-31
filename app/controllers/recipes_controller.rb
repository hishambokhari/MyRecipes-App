class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update]

  def index
    @recipes = Recipe.paginate(page: params[:page], per_page: 5)
  end

  def show 

  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.chef = current_chef
    if @recipe.save
      flash[:success] = 'Recipe was created successfully!'
      redirect_to recipe_path(@recipe)
    else
      render 'new'
    end
  end

  def edit

  end

  def update
   
    if @recipe.update(recipe_params)
      flash[:success] = 'Recipe was updated successfully!'
      redirect_to recipe_path(@recipe)
    else
      render 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:success] = "Recipe deleted successfully"
    redirect_to recipes_path
  end

  def find
    @recipe = Recipe.find_by(params[:id])
  end

  def findby_name
    @recipe = Recipe.find_by(params[:id])
    if @recipe.findby_name(@recipe)
      flash[:success] = "Your recipe was found"
      redirect_to recipe_path(@recipe)
    else
      render 'find'
    end
  end


  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :description)
  end
end
