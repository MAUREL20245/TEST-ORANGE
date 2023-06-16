#########  RESOLUTION #######

# Copie Des ID de bo??tes donn??s dans une structure de donn??es en R, comme un vecteur ou une liste.

box_ids <- c("abcdef", "bababc", "abbcde", "abcccd", "aabcdd", "abcdee", "ababab")

# D??finition de deux compteurs, l'un pour le nombre de bo??tes contenant exactement deux lettres r??p??t??es 
#("twos_count") et l'autre pour le nombre de bo??tes contenant exactement trois lettres r??p??t??es ("threes_count"). 
# Initialisation ?? z??ro.

twos_count <- 0
threes_count <- 0

#Parcours de chaque ID de bo??te dans la liste "box_ids"  comptage des lettres r??p??t??es.

for (box_id in box_ids) {
  # Initialise un dictionnaire pour stocker le nombre d'occurrences de chaque lettre
  letter_counts <- as.data.frame(table(strsplit(box_id, "")[[1]]))
  
  # V??rifie si une lettre appara??t exactement deux ou trois fois
  if (any(letter_counts$Freq == 2)) {
    twos_count <- twos_count + 1
  }
  if (any(letter_counts$Freq == 3)) {
    threes_count <- threes_count + 1
  }
}


# Calcule  de la somme de contr??le en multipliant les compteurs "twos_count" et "threes_count".


checksum <- twos_count * threes_count


#Affichage des resultats de la somme de controle

print(checksum)


