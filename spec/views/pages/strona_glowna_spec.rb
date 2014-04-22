require 'spec_helper'

feature 'uzytkownik odwiedza strone glowna' do
	scenario "powinien widziec logo" do
		visit root_path

		expect(page).to have_content("Witamy na stronie zrobto")
	end
end