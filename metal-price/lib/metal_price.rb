require 'open-uri'
require "nokogiri"
require "pry"
require_relative "./metal/price/version.rb"
require_relative "./cli.rb"
module MetalPrice
  
end
  
  class Scraper
    def scrape_page
        prices=[]
        list=Nokogiri::HTML(open("https://goldprice.com/"))
        list.css(".nfusion-table.single-price").each do |metal_price|
            prices<< {
                :name=> metal_price.css(".metal-title").text.strip,
                :price=> metal_price.css(".nfprice").text.strip
        }
        end
        prices.each{|result| puts "The #{result[:name]} is #{result[:price]} per Troy Ounce."}
    end
end

scraper=Scraper.new
scraper.scrape_page

