require 'spec_helper'

feature 'user authentiacte' do
	scenario 'with valid data' do
		user = create(:user)
		sign_in(user)
		expect(page).to have_content("Signed in successfully.")
	end

	scenario 'with invalid data' do
		user = create(:user)
		sign_in(user, password: 'wrong')
		expect(page).to have_content("Invalid email or password")
	end

	scenario 'sign out successfully' do
		user = create(:user)
		sign_in(user)

		visit root_path
		click_link("Wyloguj")
		expect(page).to have_content("Signed out successfully")
	end
end

