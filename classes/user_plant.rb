class User_plant 
    attr_accessor :water_level, :location, :growth_level
    def initialize(water_level, location, growth_level)
        @water_level = water_level
        @location = location
        @growth_level = growth_level
    end
end