require "psych"
require "figure_list/caption"

class FigureList
	def initialize(filepath)
		# Read in a YAML file from a given filepath
		@sourcepath = filepath
		yaml_list = Psych.load_file(@sourcepath)

    # Create an array of formatted captions
		@figure_captions = []
		yaml_list.each do |label, figure|
      @figure_captions << Caption.new(label, figure)
		end
	end

  # Render an entire figure list
  def generate_figlist
    list_string = "\# Figures {-}\n\n"
    @figure_captions.each do |caption|
      list_string << caption.render
      list_string << "\n\n"
    end
    return list_string
  end

  # Write a figure list out to file
  def figlist_to_file(filepath)
    File.open(filepath, "w") do |file|
      file << self.generate_figlist
    end
  end
end