seed_1 = true
bye_seed = 1
puts "Grandma: HI SONNY! SO NICE OF YOU TO VISIT GRANDMA!"
puts "Be polite! Say something to your grandma."



while seed_1 
	something = gets.chomp
      if something == "BYE" && bye_seed != 3
      bye_seed = bye_seed + 1
      puts  "Grandma: \"YOU'RE NOT LEAVING ARE YOU, SONNY!?\""
    	
elsif something == "BYE" && bye_seed >= 3
      seed_1 = false 

elsif something.downcase == "something to your grandma" || something.downcase == "something to your grandma."
	puts "
IT SEEMS WE HAVE A JOKESTER ON OUR HANDS! LOLZ
     ▄▄▄▄▀▀▀▀▀▀▀▀▄▄▄▄▄▄
    █    ▒▒▒▒▒▒▒▒▒▒▒▒  ▀▀▄
   █   ▒▒▒▒▒▒        ▒▒▒  █
  █      ▄██▀▄▄     ▄▄▄   █
 ▀▒▄▄▄▒ █▀▀▀▀▄▄█   ██▄▄█   █
█▒█▒▄ ▀▄▄▄▀        █   ▒▒▒▒▒█
█▒█ █▀▄▄     █▀    ▀▄  ▄▀▀▀▄▒█
 █▀▄ █▄ █▀▄▄ ▀ ▀▀ ▄▄▀    █  █
  █  ▀▄▀█▄▄ █▀▀▀▄▄▄▄▀▀█▀██ █
   █  ██  ▀█▄▄▄█▄▄█▄████ █
    █   ▀▀▄ █   █ ███████ █
     ▀▄   ▀▀▄▄▄█▄█▄█▄█▄▀  █
       ▀▄▄ ▒▒▒▒          █
          ▀▀▄▄ ▒▒▒▒▒▒▒▒▒▒ █
              ▀▄▄▄▄▄     █"
puts "Now talk to your grandma... dork"
bye_seed = 0

elsif something == something.upcase
	puts "Grandma: \"NO, NOT SINCE #{rand(1930..1950)}\""
  bye_seed = 0
else 
	puts "Gandma: \"HUH?! SPEAK UP, SONNY!\""
  bye_seed = 0
	end
end

puts "Grandma: \"THANKS FOR VISITING, SONNY!\"\n\"NOW GIVE GRANDMA A FOOT RUB BEFORE YOU LEAVE\"."