class ManufacturersController < ApplicationController
	def index
		@manufacturers = Manufacturer.all
	end

	def new
		@manufacturer = Manufacturer.new
	end

	def create
		@manufacturer = Manufacturer.new(params)
		if @manufacturer.save
      redirect_to shop_path(@manufacturer)
    else
      flash[:notice] = "Please correct the errors and try again"
      render :new
    end
	end
end
