
# Copyright 2016 Dominique Revuz <dr@univ-mlv.fr>
author=Dominique Revuz 
title=undopile.pl
template= tagname @anotherexercice.pl
files=@mydatafile
files=@secbde
text==

un collègue programmeur écrit un éditeur, pour pouvoir proposer un mécanisme de **Undo** (annulation), il a besoin de pouvoir stocker des commandes et de pouvoir récuperer ces commandes. Bien sur il veut récupérer les commandes dans l'ordre inverse dans lesquelles il les a entrées. Comme ces commandes peuvent prendre beaucoup de place nous souhaitons limiter le nombre de undo possible à TAILLE (valeur par default 100). 

Pour lui simplifier la vie je vais lui proposer trois fonctions: **setTaille(taille)** qui modifie le nombre maximal de commande enregistrées.
**savecommande(commande)** qui sauvegarde une commande (et oublie le plus vielle commande si l'ajout fait dépasser la taille maximum.
**loadcommande(commande)** qui dépile la dernière commande et renvoi celle ci.

==
code==
# Veuillez saisir votre code ici

==
grader==
import sys
import json 


dico_good = { "success": True , "errormessages" : "" , "execution": "OK", "feedback": "ok", "other": "" }
dico_bad = { "success": False , "errormessages" : "création d'une exception", "execution": "", "feedback": "modifier votre valeur", "other": "" }


try:
	import student
	print(json.dumps(dico_good))
except:
    print(json.dumps(dico_bad))
==

