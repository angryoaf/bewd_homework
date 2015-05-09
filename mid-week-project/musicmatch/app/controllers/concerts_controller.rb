class ConcertsController < ApplicationController

	def listings

		usr_zip = params['zip_code']
		usr_coords = HTTParty.get("http://api.zippopotam.us/us/#{usr_zip}").parsed_response

		city_name = (usr_coords['places'][0]['place name']).gsub!(/\s+/, '+')
		state_abb = usr_coords['places'][0]['state abbreviation']

		eventlist_url = "http://api.bandsintown.com/events/search.json?app_id=bewdtestproject&per_page=100&location=#{city_name},#{state_abb}"
		@event_list = HTTParty.get(eventlist_url).parsed_response

	end

	def artists
		artist_name = params['name']

		spot_search_str = "https://api.spotify.com/v1/search?query=#{artist_name}&offset=0&limit=20&type=artist"
		spot_artist_page = HTTParty.get(spot_search_str).parsed_response
		spot_artist_id = spot_artist_page['artists']['items'][0]['id']
		artist_albums_uri = HTTParty.get("https://api.spotify.com/v1/artists/#{spot_artist_id}/albums").parsed_response
		@artist_albums = artist_albums_uri['items']

		if 
			spot_artist_id == ''

			@artist_details = "Sorry, No artist Details"
		else
			@artist_details = HTTParty.get("https://api.spotify.com/v1/artists/#{spot_artist_id}").parsed_response
		end



	end
	def noinfo
		
	end

end

