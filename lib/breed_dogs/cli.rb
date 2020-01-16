class Cli 
    def call
        start
        information
    end
    def start 
        puts("You are Welcome to the World of Specially Breed Dogs!!!")
        puts ("Pick Up your breed preference:")
        Scraper.scrape_dogs
        dogs = Dogs.all
        dogs.each do |dog|
            #if dog.name == 'Barbet'
                puts "#{dog.name} - #{dog.url}"
            #end
        end
    end 
    def information
        input = ""
        while input != "exit"
            puts("Please enter dog name:")
            input = gets.strip
            #puts "#{input}"
            if(input != "exit")
                Scraper.scrape_dogs
                dogs = Dogs.all
                dogs.each do |dog|
                    if dog.name == input
                        dog_page = Nokogiri::HTML(open(dog.url))
                        dog_page_data = dog_page.css".breeds-single-content p"
                        dog_page_data.each.with_index(1) do |data, index|
                        if index == 1
                            puts "#{data.text}"
                            #dog_info = data.text
                        end
                        end
                    end
                end
            else
                break
            end
        end
    end

end

