require 'nokogiri'
require 'open-uri'

url = "https://justimagine.aurecongroup.com/all-posts/"
html = open(url).read
doc = Nokogiri::HTML(html)