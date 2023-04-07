require "rails_helper"

RSpec.describe FoodFacade do 
  it "will return food object" do 
    food = FoodFacade.food_search("sweet potatoes").first

    # require 'pry'; binding.pry

  end
end