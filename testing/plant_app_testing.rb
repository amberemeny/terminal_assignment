# Uses test-unit gem to run tests in this file.
require 'test/unit'

# Uses main plant_app file to test.
require_relative '../plant_app.rb'

class PlantAppTest < Test::Unit::TestCase
    # Setting up a new user plant --
    def setup
        @user_plant = User_plant.new(0, "outside", 0)
    end

    # Testing if new plant's water_level is at 0 --
    def test_water_level
        assert_equal(0, @user_plant.water_level)
    end

    # Testing if new plant's location is outside --
    def test_location
        assert_equal("outside", @user_plant.location)
    end

    # Testing if new plant's growth_level is 0 --
    def test_growth_level
        assert_equal(0, @user_plant.growth_level)
    end
end



