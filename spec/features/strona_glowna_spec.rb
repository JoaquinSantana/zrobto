require 'spec_helper'

feature 'uzytkownik odwiedza strone glowna' do
	scenario "jako gosc" do
		visit root_path

		expect(page).to have_title("Zrob_to APP")
		expect(page).to have_content("Witamy na stronie zrobto")
		expect(page).to have_content("Zarejestruj się")
	end

end