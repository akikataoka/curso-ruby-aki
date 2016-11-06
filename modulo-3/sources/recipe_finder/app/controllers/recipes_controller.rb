class RecipesController < ApplicationController
  def search
	@text = params[:text] || "chocolate"
    @response = Recipe.for(@text)
    puts "========================================="
    p @response
    @recipes = @response
  end
end
