require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'controller'

#Ligne demandant au serveur d'exécuter le contenu de la classe ApplicationController

run ApplicationController

