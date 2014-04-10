Gem::Specification.new do |s|
  s.name        = 'figure_list'
  s.version     = '0.0.1'
  s.date        = '2014-04-09'
  s.summary     = "Creates a Markdown/LaTeX figure list from a YAML file"
  s.description = "From a well-formatted YAML file, creates a hybrid MD/LaTeX figure list ready to be appended to an article being processed by Pandoc"
  s.authors     = ["Matthew Lincoln"]
  s.email       = 'mlincol1@umd.edu'
  s.files       = ["lib/figure_list.rb", "lib/figure_list/caption.rb"]
  s.homepage	= "https://github.com/mdlincoln/figure_list"
  s.license     = 'MIT'
end
