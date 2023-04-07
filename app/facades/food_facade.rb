class FoodFacade
  def self.food_search(query)
    FoodService.search(query)[:foods].map do |food|
      Food.new(food)
    end
  end

  def self.food_search_total(query)
    x = FoodService.search(query)[:totalHits]
  end
end