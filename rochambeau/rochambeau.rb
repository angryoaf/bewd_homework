require 'sinatra'


roch_choices = ['rock', 'paper', 'scissors']
win = {
	'rock' => 'scissors',
	'paper' => 'rock',
	'scissors' => 'paper'
}


get '/' do
	 @computer_response = roch_choices.shuffle().first() 
	# #erb :header
	erb :body
	# #erb :footer


end


get '/the_game' do
	my_play = params[:my_play]
	comp_play = params[:comp_play]
	
	if 

		my_play == comp_play
		puts comp_play
		erb :draw

	elsif 
		
		win[my_play] == comp_play
		puts comp_play
		erb :win

	else
		 puts comp_play
		erb :lose

		
	end
end
