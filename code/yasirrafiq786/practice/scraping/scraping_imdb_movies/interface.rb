require 'open-uri'
require 'yaml'
require_relative 'scrapper.rb'

yaml_array = fetch_movies.collect { |url| scrape_movies(url) }
File.open('movie_info.yml', 'w') { |file| file.write(yaml_array.to_yaml) }
puts YAML.load_file('movie_info.yml')
