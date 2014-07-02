class CarsController < ApplicationController
	def index
		@cars = Car.all
	end

	def new
		@car = Car.new
	end

	def create
		@car = Car.new(user_params)
		if user_params[:year].to_i < 1920
			flash[:notice] = 'Please enter a year of 1920 or higher'
			render :new
		elsif
			@car.save
			flash[:notice] = 'Gratz'
      redirect_to cars_path
    else
      flash[:notice] = "Please correct the errors and try again"
      render :new
    end
	end

	def user_params
    params.require(:car).permit(:manufacturer, :color, :year, :mileage, :description)
  end
end
