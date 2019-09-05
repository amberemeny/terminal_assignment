require_relative "user_plant.rb"
require_relative "../simulation.rb"

class New_game # Sets the class to initialize the details of a new game.
    attr_accessor :new_game_response, :user_response
    def initialize(new_game_response)
        @new_game_response = "" # Response to start a new game.
        @user_response = "" # Variable to repeat new game choice.
    end

    def repeat # Method used to repeat initial choice input.
        if @user_response == "wrong"
            puts "Would you like to start a new game? (Y)es or (N)o or (H)elp?"
            @new_game_response = gets.chomp.upcase
        self.get_response
        end
    end

    def get_response # Method used to get initial choice input.
        if @new_game_response != "Y" #not yes.
            if @new_game_response != "H" #not help
                if @new_game_response != "N" #not no
                    puts "This is an invalid response."
                    @user_response = "wrong"
                    repeat
                else
                    puts "Try again."
                    @user_response = "wrong"
                    repeat
                end
            else
                puts "Enter 'Y' to begin a new game.\nEnter 'N' to decide not to begin a new game." # New game manual.
                @user_response = "wrong"
                repeat
            end
        else
            plant = Sunflower.new("outside", 1) # Creates a new plant.
            user_game = Simulation.new(plant) # Initializes a new simulation.
            user_game.begin_game # Runs the "This is a new game." string.
        end
    end
end