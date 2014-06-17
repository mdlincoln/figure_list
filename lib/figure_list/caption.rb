# Caption class that contains all the variables needed to render a caption
class Caption
	def initialize(label, figure)
    if figure.key?("custom")
      @label = label
      @custom = figure["custom"]
      @img = figure["img"]
    else
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
  end

  # Render a caption in a mix of Markdown and LaTeX for processing by Pandoc
  def render
    if @custom.nil?
      return "![#{@artist}, *#{@title}*, #{@date}. #{@medium.capitalize}, #{@dimensions}. #{@collection}, #{@location}. (Image source: #{@source})\\label{fig:#{@label}}](#{@img})"
    else
      return "![#{@custom}\\label{fig:#{@label}}](#{@img})"
    end
  end
end