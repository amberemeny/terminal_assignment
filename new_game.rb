require_relative "./classes/user_plant.rb"

class Simulation
    attr_accessor :response, :choice_input1, :choice_input2
    def initialize(plant)
        @plant = plant
        @response = "" #Defines response as nothing. Essentially a placeholder.
        @day_number = 0
        @water_reduction = 0
        @bug_status = 0
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
        end
        choice_input2
    end

    def calculate_modifier
    end

end