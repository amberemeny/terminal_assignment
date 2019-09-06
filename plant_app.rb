require_relative "user_plant"
require_relative "simulation.rb"
require_relative "new_game.rb"
require 'colorize'
require 'artii'

# -- NEW GAME INITIALIZE --
system('clear')
a = Artii::Base.new :font => 'slant'
puts a.asciify('Welcome to').colorize(:yellow)
puts a.asciify('Plant Sim').colorize(:green)
"Would you like to start a new game? (Y)es or (N)o or (H)elp.\n".each_char { |c| putc c; sleep 0.03 } # Welcome text.
game = New_game.new("") # Creates new game object.
game.new_game_response = gets.chomp.upcase # Sets the new game response to user input.
game.get_response # Asks for a comparison to user input that determines an action.

