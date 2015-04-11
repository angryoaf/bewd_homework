# seed_1 = true

# puts "Give me a starting year"
# starter = gets.chomp.to_i

# puts "Give me an ending year"
# ender = gets.chomp.to_i

# while seed_1
# 	if starter > ender
# 		seed_1 = false
	
# 		if (starter%400) == 0
# 		puts starter
# 		starter = starter +1
	
# 		elsif (starter%4) == 0 && (starter%100) !=0
# 		puts starter
# 		starter = starter +1
# 	end	

# end

print "start:"
start_year = gets.chomp.to_i

print "end:"
end_year = gets.chomp.to_i

puts "leap years between #{start_year} and #{end_year}:"

while (start_year <= end_year) do
	if start_year % 4 ==0
		if start_year % 100 !=0
		puts start_year
	elsif start_year % 100 == 0
		#nothing
		else
			puts start_year
	end
	end
		start_year = start_year +1
end