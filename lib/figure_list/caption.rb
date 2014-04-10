# Caption class that contains all the variables needed to render a caption
class Caption
	def initialize(label, figure)
		@label = label
		@artist = figure["artist"]
    @title = figure["title"]
    @date = figure["date"]
    @medium = figure["medium"]
    @dimensions = figure["dimensions"]
    @collection = figure["collection"]
    @location = figure["location"]
    @source = figure["source"]
    @img = figure["img"]
  end

  # Render a caption in a mix of Markdown and LaTeX
  def render
    return "![#{artist}, *#{title}*, #{date}. #{medium.capitalize}, #{dimensions}. #{collection}, #{location}. (Image source: #{source})\\label{fig:#{label}}](#{img})"
  end
end