# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# A chaque fois qu'on lance le seed on va supprimer toutes les données de la BDD
User.destroy_all
Link.destroy_all
Comment.destroy_all

# On insère 5 users
5.times do
	User.create(username: Faker::Internet.username(8), email: Faker::Internet.email)
end
puts "5 users ont été insérés"

# On créé 10 links qu'on associe aléatoirement à des users
10.times do 
	Link.create(url: Faker::Internet.url, user: User.order("RANDOM()").first)
end	
puts "10 links ont été insérés"

# On créé 50 commentaitre de niveau 1 qu'on associe aléatoirement à des users et des link
#(On ne remmpli pas le champs 'Commentaire')
50.times do 
	Comment.create(content: Faker::HarryPotter.quote, user: User.order("RANDOM()").first, link: Link.order("RANDOM()").first)
end	
puts "50 commentaires de niveau 1 ont été insérés"

# On créé 100 commentaitre de niveau 2 qu'on associe aléatoirement à des users et à un commentaire de niveau 1
#(On ne remmpli pas le champs 'Link')
100.times do 
	Comment.create(content: Faker::HarryPotter.quote, user: User.order("RANDOM()").first, comment: Comment.order("RANDOM()").first )
end	
puts "100 commentaires de niveau 2 ont été insérés"
