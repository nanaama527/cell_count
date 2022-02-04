require '../lib/grid'

class Simulation
    attr_reader :grid, :start, :user_selection
    def initialize
        @grid = Grid.new
        @grid.generate_cells
        @user_input = ''
        @selected_cell = nil
        user_prompt
        find_cell(@user_input)
        @grid.search_cells(@selected_cell)
    end

    def user_prompt
        puts 'Select your starting cell from the following options:'
        puts 'A1, A2, A3'
        puts 'B1, B2, B3'
        puts 'C1, C2, C3'
        print '>> '
        @user_input = gets.chomp.upcase
    end

    def find_cell(selection)
        @grid.cells.each do |row|
            row.each do |cell|
                if cell.coordinate == selection
                    @selected_cell = cell
                end
            end 
        end
        @selected_cell
    end
end