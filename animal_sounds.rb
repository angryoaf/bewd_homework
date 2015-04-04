puts "What's an animal that makes a sound?"

ap1_animal = gets.chomp.gsub(/[^a-zA-Z0-9_]/i, "")

puts "what sound does a " + ap1_animal + " make?"
z
ap1_animal_sound = gets.chomp.gsub(/[^a-zA-Z0-9_]/i, "") 

puts "How many times does the " + ap1_animal + " go " + ap1_animal_sound +"?"

ap1_animal_sound_qty = gets.chomp

ap1_animal_sounds = ((ap1_animal_sound + " ") * ap1_animal_sound_qty.to_i).split.join(", ") 

puts "The " + ap1_animal + " goes " + ap1_animal_sounds.downcase + "!"