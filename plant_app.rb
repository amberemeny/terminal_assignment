require_relative "classes/user_plant"
require_relative "./new_game.rb"

# -- NEW GAME INITIALIZE --
puts "Hello there! Would you like to start a new game? (Y)es or (N)o or (H)elp"
new_game_response = gets.chomp.upcase # Asks the user for Y or N

if new_game_response == "Y" 
    plant = Sunflower.new("outside", 1) # Creates a new plant.
    user_game = Simulation.new(plant) # Initializes a new simulation.
    user_game.begin_game # Runs the "This is a new game." string.
elsif new_game_response == "H" # Help command.
    user_game = Simulation.new # Initializes a new simulation.
    user_game.manual # Displays the manual in the Simulation class.
    puts "Would you like to start a new game? (Y)es or (N)o"
    new_game_response = gets.chomp.upcase # Asks the user for Y or N
    if new_game_response == "Y"
        plant = Sunflower.new("outside", 1) # Creates a new plant.
        user_game = Simulation.new # Initializes a new simulation.
        user_game.begin_game # Runs the "This is a new game." string.
    end
else puts "Wrong answer." # If not "Y"
end
# -- END --


