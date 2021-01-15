require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  idaho_url = 'http://www.museumsusa.org/museums/?k=1271400%2cState%3aID%3bDirectoryID%3a200454'

  # The open method takes in our URL string, and returns to us the HTML from that page.
  html = open(idaho_url)

  # Nokogori's HTML method then takes in out HTML as an argument, and returns to us a set of nodes
  doc = Nokogori::HTML(html)

  binding.pry
end

scrape = Scraper.new
