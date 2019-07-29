require 'pry'

class Gossip

	attr_accessor :author, :content

	def initialize(author_name,content_provided)
		@author = author_name
		@content = content_provided
	end

	def save
		CSV.open("./db/gossip.csv","ab") do |csv|
			csv << [@author,@content]
		end
	end
end

#gossip.new.save
#binding.pry