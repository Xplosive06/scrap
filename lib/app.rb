require 'nokogiri'
require 'rspec'
require 'rubocop'
require 'open-uri'

def get_the_page
  page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
  return page
end

#méthode pour trouver le name
def get_the_name(page)
  array_of_names = Array.new
  page.xpath('//td[@class = "text-left col-symbol"]').each do |node|
    array_of_names << node.text
  end
  return array_of_names
end

#méthode pour trouver le prix
def get_the_prices(page)
  array_of_prices = Array.new
  page.xpath('//td/a[@class="price"]').each do |node|
    array_of_prices << node.text[1..-1]
  end
  return array_of_prices
end

def perform
  hash_final = Hash[get_the_name(get_the_page).zip(get_the_prices(get_the_page))]
  puts hash_final
end

perform
#h = Hash[a.zip b]