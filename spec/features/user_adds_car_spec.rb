require 'rails_helper'

feature 'User adds a car' do
	scenario 'User adds a car and is shown the index' do
		visit '/cars'
		cick_link 'Add a car'
		fill_in 'Name of manufacturer'
		fill_in 'Color'
		fill_in 'Year'
		fill_in 'Mileage'
		click_button 'Submit'
		excpect(page).to have_content(car.manufacturer)
		xcpect(page).to have_content(car.color)
		xcpect(page).to have_content(car.year)
		xcpect(page).to have_content(car.mileage)
	end

	scenario 'If user doesn\'t fill in required feilds, they are presented w/ an error.' do
	end
end
