class RandomzenController < ApplicationController

	def main
		@zenmessage = HTTParty.get('https://api.github.com/zen')
		@naturephoto = 'http://lorempixel.com/1000/400/nature'
		@color = "%06x" % (rand * 0xffffff)

	end

end