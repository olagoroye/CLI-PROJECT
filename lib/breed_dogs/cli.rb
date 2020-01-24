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
            puts ("Type exit to quit program.")
            input = gets.strip
            #puts "#{input}"
            # if(input != "exit")
                Scraper.scrape_dogs
                dogs = Dogs.all
                dogs.each do |dog|
                    if dog.name == input
                        dog_page_data = Scraper.scrap_details(dog)
                        dog_page_data.each.with_index(1) do |data, index|
                        if index == 1
                            puts "#{data.text}"
                            #dog_info = data.text
                        end
                        end
                    end
                 end
            # else
                
            end
            # break 
           goodbye
    end
    def goodbye
        puts "Thanks for checking!"
        Kernel.exit 
    end


end

