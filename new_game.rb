require_relative "./classes/user_plant.rb"

class Simulation < Sunflower
    attr_accessor :response
    def initialize
        @response = "" #Defines response as nothing. Essentially a placeholder.
    end

    def begin_game
        puts "This is a new game." #Flavor test place holder for new game.
    end 

    def manual
        puts "Manual placeholder." #Placeholder for manual text.
    end

    if @response == "H" #Constantly checks if the response is to display the manual.
        self.manual 
    end

end