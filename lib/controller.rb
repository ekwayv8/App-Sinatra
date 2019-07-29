require 'gossip'
require 'csv'

#Création d'une classe qui hérite de la classe Sinatra::Base (donc elle a les même fonctionnalité e bases que Sinatra)
class ApplicationController < Sinatra::Base
	get '/' do
	#Permet à Sinatra de comprendre qu'il doit aller choper le fichier index qui se trouve dans views
	erb :index
	end

	get	'/gossips/new/' do
	erb	:new_gossip
	end

	post '/gossips/new/' do
	  puts "Salut, je suis dans le serveur"
	  puts "Ceci est le contenu du hash params : #{params}"
	  puts "Trop bien ! Et ceci est ce que l'utilisateur a passé dans le champ gossip_author : #{params["gossip_author"]}"
	  puts "De la bombe, et du coup ça, ça doit être ce que l'utilisateur a passé dans le champ gossip_content : #{params["gossip_content"]}"
	  puts "Ça déchire sa mémé, bon allez je m'en vais du serveur, ciao les BGs !"
	end



	#Désormais en cliquant sur le bouton du formulaire je serai redirigé vers une page blanche
	#post '/gossips/new/' do
	#	puts "Ce programme ne fait rien pour le moment, on va donc afficher un message dans le terminal"
	#	Gossip.new("super_auteur","super gossip").save
	#end

	#post '/gossips/new/' do
	#	Gossip.new(les_entrées_du_gossip).save
	#end


end

