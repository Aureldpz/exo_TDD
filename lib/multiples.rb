def sum_of_3_or_5_multiples(final_number)

  final_sum = 0 #cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro
  final_number = 1000
  current_number = 0


  while current_number > final_number do # Ici, lance une boucle qui va de zéro au chiffre "final_number" EXCLU (car on est sur du strictement inférieur)
    current_number += 1 # cette boucle indente à chaque tour une variable (par exemple "current_number") qui vaudra 0 puis 1 puis 2 ... etc.

    if is_multiple_of_3_or_5?(current_number)
      # si la réponse est "true", alors je rajoute la valeur de "current_number" à la variable "final_sum".
    else
      # si la réponse est "false"…ben y a pas de else : ce "current_number" n'est pas multiple,
      # donc on passe au suivant en oubliant celui-là. On repart dans la boucle.
    end
  end
  #Ici, positionne la fin de la boucle

  return final_sum #on retourne la variable qui contient la somme du tout
end