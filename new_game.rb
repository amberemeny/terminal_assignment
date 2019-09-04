require_relative "./classes/user_plant.rb"

class Simulation
    attr_accessor :response, :choice_input1, :choice_input2
    def initialize(plant)
        @plant = plant # Sets the plant object inside the simulation.
        @response = "" # Defines response as nothing. Essentially a placeholder.
        @day_number = 1 
        @water_reduction = 0 # The speed at which the water_level is reduced.
        @bug_chance = 1 # The indication of the chance for bugs.
        @bug_status = "There are no bugs on your plant!" # Current status of bugs.
        @water_condition = "" # Current condition associated with water_level
    end

    # if @response == "H" #Constantly checks if the response is to display the manual.
    #     self.manual 
    # end

    def begin_game
        puts "This is a new game." #Flavor test place holder for new game.
        choice_input1
    end 

    def manual
        puts "Manual placeholder." #Placeholder for manual text.
    end

    def choice_input1 # Asks user for initial day choice input.
        puts "What would you like to do?"
        @response = gets.chomp.upcase
        self.choice
    end

    def choice_input2 # Asks the user for second or more choice of daily input.
        puts "Anything else?"
        @response = gets.chomp.upcase
        self.choice
    end

    def choice
        if @response == "W" # Choosing to water the plant.
            @plant.water 
        elsif @response == "F" # Choosing to fertilise the plant.
            @plant.fertilise
        elsif @response == "M" # Choosing to move the plant.
            @plant.move
        elsif @response == "P" # Choosing to use pesticide on the plant.
            @plant.add_pesticide
        elsif @response == "N" # Causing the next day to occur.
            next_day
            choice_input1 # When next day occurs, asking for next initial input.
        end
        choice_input2 # Asking for recurring input for choices.
    end

    def calculate_bug_chance # Based on water_level and location, deciding an intiger to influence the occurence of bugs.
        if @plant.water_level == 5
            if @plant.location == "inside"
                @bug_chance = 3 #If plant is well watered and inside.
            else
                @bug_chance = 2 #If plant is well watered and outside.
            end
        elsif @plant.water_level != 5
            if @plant.location == "inside"
                @bug_chance = 2 #If plant is not well watered and inside.
            else
                @bug_chance = 1 #If plant is not well watered and outside.
            end
        end
    end

    def calculate_bugs # Uses bug_chance to calculate the occurence of bugs.
        if @plant.pesticide == true #ifthere is pesticide present, there will never be bugs.
            @bug_status = "There are no bugs on your plant!"
        else
            if @bug_chance == 1 #10% chance bugs.
                if rand(100) <= 10
                    @bug_status = "Oh no, your plant has bugs!"
                end
            elsif @bug_chance == 2 #20% chance bugs.
                if rand(100) <= 20
                    @bug_status = "Oh no, your plant has bugs!"
                end
            elsif @bug_chance == 3 #30% chance bugs.
                if rand(100) <= 30
                    @bug_status = "Oh no, your plant has bugs!"
                end
            end
        end
    end

    def calculate_reduction # Calculates the speed at which the water level reduces each day based on location.
        if @plant.location == "outside"
            @water_reduction = 2
        elsif @plant.location == "inside"
            @water_reduction = 1
        end
    end

    def calculate_modifier # Calculates a float by adding numbers influenced by environment variables.
        if @plant.location == "outside" # location influencing the modifier
            @plant.growth_modifier += 0.5
        else 
            @plant.growth_modifier += 0.3
        end

        if @bug_status == "There are no bugs on your plant!"  # bug_status influencing the modifier
            @plant.growth_modifier += 0
        else 
            @plant.growth_modifier -= 0.7
        end

        if @plant.fertiliser == true # fertiliser influencing the modifier
            @plant.growth_modifier += 0.3
        else 
            @plant.growth_modifier += 0
        end

        if @plant.water_level <= 1 # water_level influencing the modifier
            @plant.growth_modifier -= 1.2
        elsif @plant.water_level == 1
            @plant.growth_modifier -= 1
        elsif @plant.water_level == 2
            @plant.growth_modifier -= 0.5
        elsif @plant.water_level == 3 
            @plant.growth_modifier += 0.5
        elsif @plant.water_level == 4
            @plant.growth_modifier += 0.6
        elsif @plant.water_level == 5
            @plant.growth_modifier += 0.7
        end
    end

    def growth_condition # Displays the growth of the plant in flavor text based on the growth modifier.
        if @plant.growth_modifier >= 1.3
            puts "Your plant has grown so much!"
        elsif @plant.growth_modifier >= 1.0
            puts "Your plant has grown well!"
        elsif @plant.growth_modifier >= 0.3
            puts "Your plant has grown a little."
        elsif @plant.growth_modifier >= 0
            puts "Your plant has grown a tiny bit."
        elsif @plant.growth_modifier >= -1.2 
            puts "Your plant is wilting."
        else 
            puts "Your plant is dying!"
        end
    end

    def calculate_water_condition # Calculates the water condition variable based on the water level and outputs flavor text.
        if @plant.water_level <= 1
            @water_condition = "Your plant is desperate and needs water!"
        elsif @plant.water_level == 1
            @water_condition = "Your plant is too dry."
        elsif @plant.water_level == 2
            @water_condition = "Your plant is a little dry."
        elsif @plant.water_level == 3 
            @water_condition = "Your plant could use some water."
        elsif @plant.water_level == 4
            @water_condition = "Your plant is well watered."
        elsif @plant.water_level == 5
            @water_condition = "Your plant is sufficiently watered."
        end
    end

    def exit_sequence # Defines the exit sequence when a win or fail condition is met.
        puts "Exit? (Y)es or (N)o to begin again."
        if gets.chomp.upcase == "Y" 
            puts "Goodbye!"
            exit # Will exit the application.
        elsif gets.chomp.upcase == "N"
            puts "reset" #TODO Find how to reset variables.
        else
            puts "Invalid response."
            exit_sequence
        end
    end

    def condition_win # Asks if the win or fail conditions have been met and runs the appropriate methods.
        if @plant.growth_level >= 10
            @plant.flower_sequence
            exit_sequence
        elsif @plant.growth_level <= 0
            @plant.death_sequence
            exit_sequence
        else
        end
    end

    def next_day # Calls for the next day to occur.
        calculate_bug_chance # Calculates the chance for bugs.
        calculate_bugs # Calculates the occurence of bugs based on the chance.
        calculate_reduction # Calculates the speed of water reduction.
        calculate_modifier # Calculates the rate of growth.
        calculate_water_condition # Calculates the display of flavor text based on the water level.
        @plant.growth_level = @plant.growth_modifier + @plant.growth_level # Sets the growth level to add the modifier.
        @plant.water_level -= @water_reduction # Causes water reduction to occur each day.
        @day_number += 1 # Adds a day to the day counter.
        puts "You have chosen to move to the next day!\nToday is day #{@day_number}." # Flavor text for the day.
        puts "Your plant is #{@plant.location}." # Displays location.
        puts "#{@bug_status}" # Displays occurence of bugs.
        growth_condition # Displays flavor text about the growth of the plant.
        @plant.growth_modifier = 0 # Sets growth modifier back to 0
        puts "#{@water_condition}" # Displays flavor text about the watering condition of the plant.
        puts "This is the growth level: #{@plant.growth_level}" #! For testing purposes --
        condition_win # Asks if win or fail conditions have been met.
    end
end