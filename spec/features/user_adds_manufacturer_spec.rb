require 'rails_helper'

feature 'User adds a manufacturer' do
	scenario 'If user adds manufacturer name and country info is recorded' do
		expect(page).to have_content('test')
	end

	scenario 'If user doesn\'t provide both name and country, an error is thrown' do
		expect(page).to have_content('test')
	end
end
