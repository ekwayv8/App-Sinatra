require 'pry'

class Gossip

	attr_accessor :author, :content
	#@@all_gossips

	def initialize(author_name,content_provided)
		@author = author_name
		@content = content_provided
	end

	def save
		CSV.open("./db/gossip.csv","ab") do |csv|
			csv << [@author,@content]
		end
	end

	def self.all
		all_gossips = []

		CSV.read("./db/gossip.csv").each do |csv_line|
			all_gossips << Gossip.new(csv_line[0],csv_line[1])
		end

		return all_gossips
	end

	#Méthode de classe portant sur l'ensemble des éléments gossip permettant de trouver un gossip en aprticulier
	def self.find(id)
		CSV.read("./db/gossip.csv")[id]
	end

end

#gossip.new.save
#binding.pry