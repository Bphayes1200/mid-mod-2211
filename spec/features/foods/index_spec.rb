require "rails_helper"

RSpec.describe "Landing page" do 
  before :each do 
    visit "/"

    fill_in :q, with: "Sweet Potatoes"
    
    click_on "Search"
  end
  it "will find results for a search" do 
    expect(page).to have_content("Search Results: 51270")  
    expect(page).to have_content("Stahlbush Island Farms, Inc.")
    expect(page).to have_content("SWEET POTATOES")
    expect(page).to have_content("638882125773")
    
  end
end