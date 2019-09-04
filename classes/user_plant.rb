class Sunflower
    attr_accessor :location, :growth_level, :water_level
    def initialize(location, growth_level)
        @location = location 
        @growth_level = growth_level
        @growth_multiplier = 0
        @fertiliser = false
        @water_level = 0
        @bug_chance = 1
    end

    def water 
        if @water_level != 5
            @water_level = 5
        else
            puts "You can't water your plant again today."
        end
        puts @water_level #! TESTING OUTPUT
        puts response #! TESTING OUTPUT
    end

    def fertilise
        @fertiliser ? puts("You can't fertilise your plant again.") : @fertiliser = true
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
    
end