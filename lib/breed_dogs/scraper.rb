class Scraper 

 def self.scrape_dogs
   require 'nokogiri'
   require 'open-uri'
   page = Nokogiri::HTML(open("https://dogtime.com/dog-breeds/profiles"))
   alldogs = page.css"a.list-item-title"
   alldogs.each do |dog| 
      dog_url = dog.attributes["href"].value
      dog_name = dog.children.first.text  
      puts "#{dog_name} - #{dog_url}" 
      # Dogbreed.new(url & name)
   end
#  binding.pry
 end

end 

