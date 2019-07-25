class RecipesController < ApplicationController
    before_action :find_recipe, only: [:edit, :show, :update]
    def index 
        @recipes = Recipe.all
    end

    def show
        
    end

    def new
        @recipe = Recipe.new
    end

    def create 
    end

    def edit
    end

    def update

    end

    private

    def find_recipe
        @recipe = Recipe.find(params[:id])
    end

    def recipe_params
        params.require(:recipe).permit(:name, :instructions, :ingredients_id, ingredients_attributes: [:name, :quantity])
    end
end
