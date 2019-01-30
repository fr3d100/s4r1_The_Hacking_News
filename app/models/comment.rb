class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :link, optional:true #Pas de lien relatif si le commentaire st de niveau 2, donc associé à un commentaire
	belongs_to :comment, optional:true #Pas de lien relatif à un commentaire si commentaire de premier niveau
end
