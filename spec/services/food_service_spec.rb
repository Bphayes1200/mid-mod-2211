require "rails_helper"

RSpec.describe FoodService do 
  it "will make a connection" do 
    foods = FoodService.search("sweet potatoes")

    expect(foods[:foods]).to_not eq([])
    expect(foods[:foods].first[:description]).to eq("SWEET POTATOES")
  end
end