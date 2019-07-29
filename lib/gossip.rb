require 'pry'

class Gossip

	attr_accessor :author, :content
	#@@all_gossips

	#Méthode permettant d'initialiser la création de mes objets gossip à l'aide de 2 variables d'instances
	def initialize(author_name,content_provided)
		@author = author_name
		@content = content_provided
	end

	#Méthode permettant de sauvegarder mes différents couples (auteur,gossip) au sein d'un fichier csv pour constituer une BDD
	def save
		CSV.open("./db/gossip.csv","ab") do |csv|
			csv << [@author,@content]
		end
	end

	#Méthode permettant de faire appel à l'ensemble de mes objets Gossip afin de les sauvegarder au sein d'un array
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