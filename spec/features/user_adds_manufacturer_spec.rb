require 'rails_helper'

feature 'User adds a manufacturer' do
	scenario 'If user adds manufacturer name and country info is recorded' do
		manufacturer = FactoryGirl.create(:manufacturer)
		visit '/manufacturers'
		click_link 'Add manufacturer'
		fill_in 'Manufacturer Name', with: manufacturer.name
		fill_in 'Manufacturer Country', with: manufacturer.country
		click_button 'Submit'
		expect(page).to have_content(manufacturer.name)
		expect(page).to have_content(manufacturer.country)
	end

	scenario 'If user doesn\'t provide both name and country, an error is thrown' do
		manufacturer = FactoryGirl.create(:manufacturer)
		visit '/manufacturers'
		click_link 'Add manufacturer'
		click_button 'Submit'
		expect(page).to have_content('There were errors with your submission:')
	end
end
