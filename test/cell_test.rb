require './test_helper'
require '../lib/cell'

class CellTest < MiniTest::Test
    def setup
        @cell = Cell.new
    end 
    def test_if_exists
        assert_instance_of Cell, @cell
    end

    def test_cell_is_active
        expected = [true, false]
        assert_includes expected, @cell.active?
    end

    def test_cell_number_is_rendered
        assert_equal 'A1', @cell.render
    end
end