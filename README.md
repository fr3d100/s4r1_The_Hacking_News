# Bienvenue

Ceci est mon super The Hacking News

## Pour le tester :

* Clone le projet git
```
git clone https://github.com/fr3d100/s4r1_The_Hacking_News.git
```

* Rend toi à la racine de l'application
```
cd s4r1_The_Hacking_News
```

* Lance la console Rails 
```
rails c
```

## Quelques petites commandes relatives aux programme:

Avoir tous les Utilisateurs:
```
tp User.all
```

Avoir tous les liens :
```
tp Link.all
```

Avoir tous les commentaires de niveau 1 (liés à un "link")
```
#Les commentaires de niveau 1 ne sont pas liés à des commentaires
tp Comment.where(comment: nil)
```

Avoir tous les commentaires de niveau 2 (liés à un commentaire)
```
#Les commentaires de niveau 2 sont liés à des commentaires et non à des liens
tp Comment.where(link :nil)
```

Avoir tous les commentaires de niveau 1 du premier lien :
```
tp Comment.where(link: Link.first)
```

Avoir tous les commentaires de niveau 2 du premier lien :
```
tp Comment.where(comment: Comment.where(link: Link.first))
```
