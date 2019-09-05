require_relative "classes/user_plant"
require_relative "./simulation.rb"
require_relative "./classes/new_game.rb"

# -- NEW GAME INITIALIZE --
puts "Hello there! Would you like to start a new game? (Y)es or (N)o or (H)elp" # Welcome text.
game = New_game.new("") # Creates new game object.
game.new_game_response = gets.chomp.upcase # Sets the new game response to user input.
game.get_response # Asks for a comparison to user input that determines an action.


