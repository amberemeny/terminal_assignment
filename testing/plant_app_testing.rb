# Uses test-unit gem to run tests in this file.
require 'test/unit'

# Uses main plant_app file to test.
require_relative '../classes/user_plant.rb'
require_relative '../simulation.rb'

class PlantAppTest < Test::Unit::TestCase # Testing to see if new games are being initialized properly.
    def test_plant_initialization # Tests if plant is being initialised properly.
        plant = Sunflower.new("outside", 1) # Creates a new plant.
        assert_equal(0, plant.water_level) # Tests water_level.
        assert_equal(1, plant.growth_level) # Tests growth_level.
        assert_equal("outside", plant.location) # Tests location.
        assert_equal(false, plant.fertiliser) # Tests fertiliser.
        assert_equal(false, plant.pesticide) # Tests pesticide.
        assert_equal(0, plant.growth_modifier) # Tests growth_modifier.
    end
    def test_growth_level_calculation # Tests to make sure the growth_modifier is working correctly.
        plant = Sunflower.new("outside", 1) # Creates a new plant.
        user_game = Simulation.new(plant) # Initializes a new simulation.

        plant.water_level = 5 # Sets plant water level to 5.
        plant.pesticide = true # Sets plant pesticide to true.

        user_game.calculate_modifier # Calls the user_game calculate_modifier method.
        # location = "outside" = 0.5
        # no bugs = 0
        # no fertiliser = 0
        # water_level = 5 = 0.7
        assert_equal(1.2, plant.growth_modifier)

    end
end