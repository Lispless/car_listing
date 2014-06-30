require 'rails_helper'

feature 'User adds a car' do
	scenario 'User adds a car and is shown the index' do
		car = FactoryGirl.create(:car)
		visit '/cars'
		click_link 'Add a car'
		fill_in 'Name of manufacturer', with: car.manufacturer
		fill_in 'Color', with: car.color
		fill_in 'Year', with: car.year
		fill_in 'Mileage', with: car.mileage
		click_button 'Submit'
		expect(page).to have_content(car.manufacturer)
		expect(page).to have_content(car.color)
		expect(page).to have_content(car.year)
		expect(page).to have_content(car.mileage)
	end

	scenario 'If user doesn\'t fill in required feilds, they are presented w/ an error.' do
		car = FactoryGirl.create(:car)
		visit '/cars'
		click_link 'Add a car'
		fill_in 'Year', with: car.year
		click_button 'Submit'
		expect(page).to have_content("Mileage can't be blank")
		expect(page).to have_content("Color can't be blank")
	end
end
