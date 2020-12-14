class Mineral

    attr_accessor :name

    @@all = []


    def initialize(name)
        self.name = name
        @@all << self
    end 



    def self.all
        @@all
    end 
end 