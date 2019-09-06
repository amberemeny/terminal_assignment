# Uses test-unit gem to run tests in this file.
require 'test/unit'

# Uses main plant_app file to test.
require_relative '../classes/user_plant.rb'

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
end