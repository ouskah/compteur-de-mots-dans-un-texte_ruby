# =================== Fréquences des mots dans un texte =======================

# demander à l'utilisateur d'entrer un texte
puts "Entrez votre texte : "

text = gets.chomp

# créer un hash pour stocker les mots
frequences = {}


# obtenir un tableau des mots du texte (méthode split)
mots = text.tr(".,'\"", "").downcase.split(" ")

# tester notre pgrm en cours de codage
puts mots.inspect

# itérer sur le tableau obtenu 
###pour remplir le hash
mots.each do |mot|
    if frequences[mot]
        frequences[mot]+= 1
    else
        frequences[mot] = 1
    end
end

# organiser les mots pour sortir les mots les plus fréquences

frequences = frequences.sort_by {|mot, count| count }
frequences.reverse!

puts frequences.inspect

first = frequences.first

puts "Le mot qui apparaît le plus souvent en premier est le mot  : \"#{first[0]}\" qui appraraît #{first[1]} fois"