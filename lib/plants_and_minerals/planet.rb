

class PlantsAndMinerals::Planet
    
    def welcome
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Welcome to the Planet Program"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts ""
        puts "Loading specimens..."
        Planting.seeds 
        Mine.minerals
        list
    end 
  
    def list
        puts "Use below numbers to select your interest,"
        puts "or type leaf at anytime to leave with peace:" 
        puts "------------"
        puts "1) Plants"
        puts "2) Minerals"
        puts "------------"
        options
    end 
  
    def options
        input = gets.strip.downcase 
        if input ==  "1"
            list_plants
        elsif input == "2"
             list_minerals
        elsif input == "leaf" 
            peace
            exit
        else
            puts "------------"
            puts "I'm a growing program. The other stuff will come later."
        end
        puts ""
        list
    end 
  
    def list_plants
        puts "---------------------------------------"
        puts "Here's a list of all the plants I know:"
        Plants.all.each.with_index(1) do |plant, index|
           puts "#{index}) #{plant.name}"
        end 
        puts "---------------------------------------"
        puts "You can use any of the above numbers to learn more about any"
        puts "plant from my internal botanist or type anything else to go back."
        botanist
    end

    def list_minerals
        puts "------------"
        puts "Here comes all the all the minerals on our planet:"
        sleep(3)
        Mine.all.each.with_index(1) do |mineral, index|
            puts "#{index}) #{mineral}"
            sleep(0.000001)
        end 
        puts "---------------------------------------"
        puts "That's a lot of minerals! I don't have an interal"
        puts "geologist, so let's go back. There's a botanist!"  
        puts "---------------------------------------"
        list
    end 
  
    def botanist
        input = gets.strip.downcase
        if input.to_i.between?(1, Plants.all.length)
            index = input.to_i - 1 
            plant = Plants.all[index]
            plant_details(plant)
        elsif input == "leaf" 
            peace
            exit
        else 
            puts "---------"
            puts "Back to the main menu, more plants coming soon!"
            sleep(2)
        end 
        puts ""
        list
    end 
  
    def plant_details(plant)
        puts "---------------------------------------"
        puts "#{plant.name}" 
        puts "---------------------------------------"
        puts "Scientific Name: #{plant.scientific_name}"
        puts "Family: #{plant.family}"
        puts "Genus: #{plant.genus}"
        puts "Image_url: #{plant.image_url}"
        puts "---------------------------------------"
        sleep(5)
        puts "Let's go back in case you want to learn"
        puts "about another plant from my botanist!"
        list_plants
    end 

    def peace
        puts "------------"
        puts "I hope you learned something about the different plants and minerals on our planet."
        puts "Come back to learn more! It's going to be wild with animals running around!" 
        puts "Peace!"
    end 

end 