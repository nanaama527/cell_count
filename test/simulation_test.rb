require './test_helper'
require '../lib/simulation'

class SimulationTest < MiniTest::Test
    def setup
        @simulation = Simulation.new
    end

    def test_simulation_exists
        assert_instance_of Simulation, @simulation
    end

    def test_simulation_begins_with_attributes
        assert_instance_of Grid, @Simulation.grid
    end

    def test_simulation_can_find_cell_from_user_input
        chosen_cell = @simulation.find_cell('A1')
        assert_equal 'A1', chosen_cell.coordinate
    end       
end