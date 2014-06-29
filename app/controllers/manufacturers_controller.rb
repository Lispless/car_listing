class ManufacturersController < ApplicationController
	def index
		@manufacturers = Manufacturers.all
	end
end
