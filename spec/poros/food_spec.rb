require "rails_helper" 

RSpec.describe Food do 
  it "will exist and have attributes" do 
    attributes = {gtinUpc: 1111111111, description: "It is good", brandOwner: "Brian", ingredients: "sweet potatoes" }
    food = Food.new(attributes)

    expect(food.gtinupc).to eq(1111111111)
    expect(food.description).to eq("It is good")
    expect(food.brand_owner).to eq("Brian")
    expect(food.ingredients).to eq("sweet potatoes")
  end
end