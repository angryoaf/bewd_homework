require 'httparty'


#usatoday_books ='http://mashable.com/stories.json'
usatoday_books ='http://api.usatoday.com/open/bestsellers/books/ThisWeek?api_key=

usa_api_response = HTTParty.get(usatoday_books)
usatd_parser = usa_api_response.parsed_response

counter = 0
seed = 0

booklist_20 = (usatd_parser['BookLists'][1]['BookListEntries'])

	booklist_20.each do |list_hash|	

			if (booklist_20[counter]['Category']['CategoryID']).to_i == 151 && seed < 20

				seed = seed +1


				puts "booknumber: #{seed}"

				puts booklist_20[counter]['Category']['CategoryName']
					puts "#{counter+1}: #{booklist_20[counter]['Title']}"
					puts "Author: #{booklist_20[counter]['Author']}"
						if 
							booklist_20[counter]['BriefDescription'] == ''
							puts ''
						else
							puts "Description: #{booklist_20[counter]['BriefDescription']}"
						end

					puts "\n------------------------\n\n"
				
				counter = counter + 1
			else
				counter = counter +1
			end
	end
