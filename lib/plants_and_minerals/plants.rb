


class Plants

    attr_accessor :name, :scientific_name, :family, :genus, :image_url

    @@all = []

    def initialize(seeds)
        self.name = seeds["common_name"]
        self.scientific_name = seeds['scientific_name'] 
        self.family = seeds['family']
        self.genus = seeds['genus']
        self.image_url = seeds['image_url']
        @@all << self

    end 

    def self.all
        @@all
    end 

end 
