class Dogs
    attr_accessor :name, :url, :info
	@@all = []
	
	def initialize(name, url, info)
		@name = name
        @url = url
        @info = info
		@@all << self
	end
	
	def self.all
		@@all
	end
end