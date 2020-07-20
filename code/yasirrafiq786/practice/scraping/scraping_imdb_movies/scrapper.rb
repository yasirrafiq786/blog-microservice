require 'nokogiri'
require 'open-uri'

def fetch_movies
  html_top_250 = open('https://www.imdb.com/chart/top').read
  doc = Nokogiri::HTML(html_top_250)
  doc.search('.titleColumn a').first(10).map { |movie_url| 'https://www.imdb.com/'+movie_url['href'] }
end

def scrape_movies(url)
  doc = Nokogiri::HTML(open(url).read)
  {
    name: doc.css('.title_wrapper h1').children[0].text.chomp,
    year: doc.css('.title_wrapper a').children[0].text.to_i,
    storyline: doc.css('.summary_text').children[0].text.strip,
    director: doc.css('.credit_summary_item a').children[0].text,
    cast: doc.search('.primary_photo+td').first(5).map { |node| node.text.strip }
  }
end
