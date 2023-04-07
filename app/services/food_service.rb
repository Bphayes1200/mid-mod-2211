class FoodService
  def self.search(query)
    JSON.parse(conn.get("search?query=#{query}").body, symbolize_names: true)
  end

  private
  def self.conn
    Faraday.new(
      url: "https://api.nal.usda.gov/fdc/v1/foods/", 
      params: { API_KEY: ENV["FDC_API_KEY"]}
    )
  end
end