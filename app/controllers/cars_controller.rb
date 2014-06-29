class CarsController < ApplicationController
	def index
		@cars = Car.all
	end

	def new
		@car = Car.new
	end

	def create
		@car = Car.new(user_params)
		if @car.save
      redirect_to manufacturers_path(@car)
    else
      flash[:notice] = "Please correct the errors and try again"
      render :new
    end
	end

	def user_params
    params.require(:car).permit(:manufacturer, :color, :year, :mileage )
  end
end
