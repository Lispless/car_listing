class ManufacturersController < ApplicationController
	def index
		@manufacturers = Manufacturer.all
	end

	def new
		@manufacturer = Manufacturer.new
	end

	def create
		@manufacturer = Manufacturer.new(user_params)
		if @manufacturer.save
      redirect_to manufacturer_path(@manufacturer)
    else
      flash[:notice] = "Please correct the errors and try again"
      render :new
    end
	end

	def user_params
    params.require(:manufacturer).permit(:name, :country)
  end
end
