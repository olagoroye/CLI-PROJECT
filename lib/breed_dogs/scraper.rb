class Scraper 

 def self.scrape_dogs
   require 'pry'
   require 'nokogiri'
   require 'open-uri'
   page = Nokogiri::HTML(open("https://dogtime.com/dog-breeds/profiles"))
   alldogs = page.css"a.list-item-title"
   #puts "#{alldogs}"
   alldogs.each do |dog| 
      if dog != nil 
         dog_url = dog.attributes["href"].value
         dog_name = dog.children.first.text  
         dog_info = ""
         #if dog_name == 'Barbet'
            
            #puts "#{dog_url}"
            
         #end

         #puts "#{dog_name} - #{dog_url}" 
         # Dogbreed.new(url & name)
         dogs = Dogs.new(dog_name, dog_url, dog_info)
      end
   end
   #binding.pry
 end

end 

