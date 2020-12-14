class Mine

    

    def self.scraping
        x = []
        doc = Nokogiri::HTML(open("http://webmineral.com/data/index.html"))
        minerals = doc.css("a").text.split(".shtml")
        x << minerals.shift
        minerals.each do |name| 
            Mineral.new(name)
        end    
    end

    
     
end 