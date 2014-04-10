require "test/unit"
require "figure_list"

class FigureListTest < Test::Unit::TestCase
	def test_file
		assert_equal File.open("test/sample.md", "r").read, 
	      FigureList.new("test/sample.yaml").generate_figlist
	end

	def test_output
		out_path = "test/test.md"
		FigureList.new("test/sample.yaml").figlist_to_file(out_path)
		assert_equal File.open("test/sample.md", "r").read,
			File.open("test/test.md", "r").read
end
