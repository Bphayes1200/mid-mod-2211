class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.food_search(params[:q])
    @result_count = FoodFacade.food_search_total(params[:q])
    @ten_foods = @foods[0..9]
  end
end