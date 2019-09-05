require 'colorize'
require 'artii'

class Sunflower
    attr_accessor :location, :growth_level, :water_level, :growth_modifier, :pesticide, :fertiliser
    def initialize(location, growth_level)
        @location = location # Location of the plant.
        @growth_level = 0 # Level of growth of the plant, flowers at 10, dies at a negative number.
        @growth_modifier = 0 # Speed at which the plant grows.
        @fertiliser = false # Presence of fertiliser.
        @water_level = 0 # Level of water in the plant.
        @pesticide = false # Presence of pesticides.
    end

    def water # Method to water the plant.
        if @water_level != 5
            @water_level = 5
        else
            puts "You can't water your plant again today." # Water once per day only.
        end
    end

    def fertilise # Method to fertilise the plant.
        if @fertiliser == true
            puts "You can't use more fertiliser on your plant." # Allows only one occurence of fertiliser per game.
        elsif @fertiliser == false
            @fertiliser = true
            puts "You have fertilised your plant."
        end
    end

    def move # Moves plant inside if outside and outside if inside.
        if @location == "outside"
            @location = "inside"
            puts "You have moved your plant inside."
        elsif @location == "inside"
            @location = "outside"
            puts "You have moved your plant outside."
        end
    end

    def add_pesticide # Adds pesticide to plant.
        if @pesticide == true
            puts "You can't use pesticide on your plant again." # Once per game.
        else
            @pesticide = true
            puts "You have sprayed your plant with pesticide."
        end
    end

    def flower_sequence #growth level is over 10, this method runs.
        system("clear")
        "Wow! Your sunflower has a surprise for you! It has".colorize(:green).each_char { |c| putc c; sleep 0.03 } 
        " flowered!".colorize(:blue).each_char { |c| putc c; sleep 0.03 }
        puts " "
        puts <<-'EOF'
           __
        .-/  \-.
       (  \__/  )
      /`-./;;\.-`\
      \ _.\;;/._ /
       (  /  \  )
        '-\__/-'.-,
       ,    \\ (-. )
       |\_   ||/.-`
       \'.\_ |;`
        '--,\||     ,
            `;|   _/|
             // _/.'/
            //_/,--'
           ||'-`                  
EOF
puts " "
    end
    def death_sequence #growth level is under 0, this method runs.
        system("clear")
        puts "Oh no, your plant has died!"        
    end
    
end