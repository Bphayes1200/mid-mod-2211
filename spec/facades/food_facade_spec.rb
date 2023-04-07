require "rails_helper"

RSpec.describe FoodFacade do 
  it "will return food object" do 
    food = FoodFacade.food_search("sweet potatoes").first
    
    expect(food.gtinupc).to eq("8901020020844")
    expect(food.description).to eq("SWEET POTATOES")
    expect(food.brand_owner).to eq("NOT A BRANDED ITEM")
    expect(food.ingredients).to eq("ORGANIC SWEET POTATOES.")
  end

  it "will return a number for total results found" do 
    food_count = FoodFacade.food_search_total("sweet potatoes")

    expect(food_count).to eq(51270)
  end
end