require_relative "./classes/user_plant.rb"

class Simulation
    attr_accessor :response, :choice_input1, :choice_input2
    def initialize(plant)
        @plant = plant
        @response = "" #Defines response as nothing. Essentially a placeholder.
        @day_number = 0
        @water_reduction = 0
        @bug_chance = 1
        @bug_status = "There are no bugs on your plant!"
        @water_condition = ""
        @growth_condition = ""
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

    def choice_input1
        puts "What would you like to do?"
        @response = gets.chomp.upcase
        self.choice
    end

    def choice_input2
        puts "Anything else?"
        @response = gets.chomp.upcase
        self.choice
    end

    def choice
        if @response == "W"
            @plant.water
        elsif @response == "F"
            @plant.fertilise
        elsif @response == "M"
            @plant.move
        elsif @response == "P"
            @plant.add_pesticide
        elsif @response == "N"
            next_day
            choice_input1
        end
        choice_input2
    end

    def calculate_bug_chance
        if @plant.water_level == 5
            if @plant.location == "inside"
                @bug_chance = 3
            else
                @bug_chance = 2
            end
        elsif @plant.water_level != 5
            if @plant.location == "inside"
                @bug_chance = 2
            else
                @bug_chance = 1
            end
        end
    end

    def calculate_bugs
        if @plant.pesticide == true
            @bug_status = "There are no bugs on your plant!"
        else
            if @bug_chance == 1
                if rand(100) <= 10
                    @bug_status = "Oh no, your plant has bugs!"
                end
            elsif @bug_chance == 2
                if rand(100) <= 20
                    @bug_status = "Oh no, your plant has bugs!"
                end
            elsif @bug_chance == 3
                if rand(100) <= 30
                    @bug_status = "Oh no, your plant has bugs!"
                end
            end
        end
    end

    def calculate_reduction
        if @plant.location == "outside"
            @water_reduction = 2
        elsif @plant.location == "inside"
            @water_reduction = 1
        end
    end

    def calculate_modifier
        if @plant.location == "outside" # location influencing the modifier
            @plant.growth_modifier += 0.5
        else 
            @plant.growth_modifier += 0.3
        end
        puts @plant.growth_modifier

        if @bug_status == "There are no bugs on your plant!"  # bug_status influencing the modifier
            @plant.growth_modifier += 0
        else 
            @plant.growth_modifier -= 1
        end
        puts @plant.growth_modifier

        if @plant.fertiliser == true # fertiliser influencing the modifier
            @plant.growth_modifier += 0.3
        else 
            @plant.growth_modifier += 0
        end
        puts @plant.growth_modifier

        if @plant.water_level <= 1 # water_level influencing the modifier
            @plant.growth_modifier -= 3
        elsif @plant.water_level == 1
            @plant.growth_modifier -= 2
        elsif @plant.water_level == 2
            @plant.growth_modifier -= 0.5
        elsif @plant.water_level == 3 
            @plant.growth_modifier += 0.5
        elsif @plant.water_level == 4
            @plant.growth_modifier += 0.6
        elsif @plant.water_level == 5
            @plant.growth_modifier += 0.7
        end
        puts @plant.growth_modifier
    end

    def calculate_condition

    end

    def next_day
        puts "Test value: #{@plant.water_level}" #! TESTING VALUE ! 

        calculate_bug_chance
        calculate_bugs
        calculate_reduction
        calculate_modifier
        calculate_condition
        puts "Test value: #{@plant.growth_modifier}" #! TESTING VALUE ! 
        @plant.growth_modifier = 0 # sets growth modifier back to 0
        @plant.water_level -= @water_reduction
        @day_number += 1
        puts "You have chosen to move to the next day!\nToday is day #{@day_number}. Your plant is #{@plant.location}. 
        #{@water_condition} \n#{@growth_condition} \n#{@bug_status}"

        # puts "Test value: #{@plant.water_level}" #! TESTING VALUE ! 
        # puts "Test value: #{@bug_chance}" #! TESTING VALUE ! 


    end


end