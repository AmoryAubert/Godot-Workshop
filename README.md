# Godot-Workshop

## Préparation
- créez votre projet en ESL 3.0
- sélectionnez l'icon.png dans le système de fichiers, allez dans "Importer"
- dans les réglages, décochez la case "Filter"
- cliquez sur "réimporter"
- cliquez ensuite sur "pré-réglage..." et sélectionnez "définnir comme défaut pour «Texture»"

- dans la barre de menu, dans projet > paramètres du projet > Controles
- éffacez tous les controles, et ajoutez les votres (haut, bas, gauche, droite, courir, marcher)

- clonez mon repo et glissez son contenu dans le dossier du projet
## Let's Go
1. Le joueur
- creez un noeud de type kineticBody2D, renommez-le en "Poulet"
- dans celui-ci ajoutez un sprite et une collisionShape2D.
- selectionnez le noeud "sprite", faites glisser l'image du poulet sur l'attribut "Texture" dans l'inspecteur.
- dans l'inspecteur, ouvrez l'onglet "Animation", définissez Vframes à 4 Hframes à 3 et Frame à 4.
- selectionnez le noeud "collisionShape2D", dans l'inspecteur, choisissez une forme (Shape) de type circleShape2D.
- sur la scene faites en sorte que la zone de collision englobe tout le poulet.
- cliquez sur le noeud "poulet", et importez-y le script "poulet.gd"

2. La Map
- ajoutez une nouvelle scène avec un noeud "Node2D", on le renomme en "TileSetMaker"
- ajoutez un noeud "Sprite"
- importez le script "TileSetMaker.gd" au noeud de la scène.
- lancez la scène (F6) afin de généré le fichier "terrain_tiles.tres"
- Creez une nouvelle scene avec un noeud "Node2D", renommez le "Map01"
- ajoutez un noeud "TileMap" et nommez le "Ground"
- faites glisser le "terrain_tiles.tres" sur l'attribut "TileSet" dans l'inspecteur
- modifiez le "Cell Size" dans l'inspecteur a 128 x 128
- Concevez la map en posant les images sur la scène. n'hesitez pas a depasser le champs de vision.
- sauvegardez la scene (CTRL + S)
- ajoutez l'instance de la scène "poulet" a la scène "Map01"

3. Une caméra pour le joueur
- ouvrez la scène "poulet"
- ajoutez un noeud "Camera2D"
- cochez la case "current" et ajustez le zoom à 0.7
- définir la "Limit" "top" et "left" à 0
- ouvrez la scène "Map01", importez un script "Map.gd"

4. Les voitures
- ajoutez une nouvelle scène avec un noeud "kineticBody2D", renommez-le en "Voiture"
- ajoutez un noeud enfant "sprite" et "collisionShape2D"
- placez une texture sur le sprite
- définir la "rotation deg" à 90
- selectionnez le noeud "collisionShape2D", choisissez une forme (Shape) de type capsuleShape2D.
- sur la scene faites en sorte que la zone de collision englobe toute la voiture.
- importez le script "voiture.gd" au noeud parent
- instanciez la scène "voiture" et renommez la en "Audi" par exemple
- remplacez la texture par la texture de l'Audi


5. Un tracé pour les voitures
- sur la scène "Map01", ajoutez un noeud "Node2D", renommez le en "Paths"
- ajoutez un noeud "Path2D" au noeud "Paths"
- tracez un chemin, ajustez les courbes pour rendre les virages plus souple
- ajoutez ensuite un noeud enfant de type "PathFollow2D"
- faites glisser la scène d'un véhicule pour en faire un noeud enfant au noeud "PathFollow2D"

6. Des pièces
- importez la scène "Coin.tscn"
- créer un noeud "Node2D"
- faites glisser autant de pièce que vous le voudrez

7. Le score
- dans la barre de menu, dans projet > paramètres du projet > AutoLoad
- cliquez sur le dossier, choisissez "coin.gd" et renommez le nom du noeud en "Score"
- dans la scène "Map01", créez un noeud "canvasLayer", renommez le en "ScoreLayer"
- ajoutez 2 noeuds "RichTextLabel", renommez le 2eme en "ScoreLabel"
- dans le premier, définissez le texte à "Score :"
- dans le second, définissez le texte à "0"

8. Message de GameOver
- dans la scène "Map01", créez un noeud "canvasLayer", renommez le en "GameOverLayer"
- ajoutez un noeud "RichTextLabel"
- définissez le texte à "Game Over"
