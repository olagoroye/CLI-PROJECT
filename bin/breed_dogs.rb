require_relative '../lib/breed_dogs/cli.rb'
require_relative '../lib/breed_dogs/scraper.rb'

Cli.new.start
Scraper.scrape_dogs