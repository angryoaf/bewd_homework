class DogsController < ApplicationController
  def details
  	dview =	params[:id] 
  	@pup = Dog.find(dview)
  	
  end

  def add_new
  		@add_pup = Dog.new
  end




private

	def dog_params
		params.require(:name, :age, :description).permit(:h_id, :photo_url)

	end
end