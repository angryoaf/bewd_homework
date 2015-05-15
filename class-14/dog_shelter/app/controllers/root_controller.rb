class RootController < ApplicationController

	def index
		@pups = Dog.all
	end
end
