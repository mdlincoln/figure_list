require "test/unit"
require "figure_list"

class FigureListTest < Test::Unit::TestCase
	def test_file
		assert_equal File.open("test/sample.md", "r").read, 
	      FigureList.new("test/sample.yaml").generate_figlist
	end
end
