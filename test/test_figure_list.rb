require "test/unit"
require "figure_list"

class FigureListTest < Test::Unit::TestCase
	def test_file
		assert_equal "# Figures\n\n![Jan Baptist Collaert, *Color Olivi*, c. 1590. Engraving, 521 x 414 mm.. Rijksmuseum, Amsterdam. (Image source: http://rijksmuseum.nl/)\\label{fig:collaert_1590}](/foo/bar.jpg)\n", 
      FigureList.new("sample.yaml")
  end
end
