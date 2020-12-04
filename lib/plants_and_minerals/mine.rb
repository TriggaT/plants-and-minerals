class Mine

    @@all = []

    def self.minerals
        x = []
        doc = Nokogiri::HTML(open("http://webmineral.com/data/index.html"))
        minerals = doc.css("a").text.split(".shtml")
        x << minerals.shift
       @@all = minerals
    end

    def self.all 
        @@all 
    end 
     
end 