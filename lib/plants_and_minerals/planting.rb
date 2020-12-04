
class Planting

    def self.get_plants
        url = "https://trefle.io/api/v1/plants"
        r = HTTParty.get(url,
        query: {"token": "your_token"})
    end
  
    def self.seeds
        plants = self.get_plants['data']
        plants.each do |seeds|
            Plants.new(seeds)
        end
    end 

end 

       