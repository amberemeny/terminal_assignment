class Sunflower
    attr_accessor :location, :growth_level, :water_level, :growth_modifier, :pesticide, :fertiliser
    def initialize(location, growth_level)
        @location = location 
        @growth_level = 0
        @growth_modifier = 0
        @fertiliser = false
        @water_level = 0
        @pesticide = false
    end

    def water 
        if @water_level != 5
            @water_level = 5
        else
            puts "You can't water your plant again today."
        end
    end

    def fertilise
        if @fertiliser == true
            puts "You can't use more fertiliser on your plant."
        elsif @fertiliser == false
            @fertiliser = true
            puts "You have fertilised your plant."
        end
    end

    def move
        if @location == "outside"
            @location = "inside"
            puts "You have moved your plant inside."
        elsif @location == "inside"
            @location = "outside"
            puts "You have moved your plant outside."
        end
    end

    def add_pesticide
        if @pesticide == true
            puts "You can't use pesticide on your plant again."
        else
            @pesticide = true
            puts "You have sprayed your plant with pesticide."
        end
    end

    def flower_sequence
        puts "flowered"
    end

    def death_sequence
        puts "dead"        
    end
    
end