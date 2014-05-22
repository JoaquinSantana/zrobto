require 'spec_helper'

feature 'uzytkownik odwiedza strone glowna' do
	scenario "jako gosc" do
		visit root_path

		expect(page).to have_title("Zrob_to APP")
	end


	scenario "jako uzytkownik" do
		user = create(:user)
		sign_in(user)
		visit root_path

		expect(page).to have_content("Wszystkie zadania")
		expect(page).to have_link("Do zrobienia")
		expect(page).to have_link("Wykonane")

		visit ukonczone_tasks_path

		expect(page).to have_content("Ukończone zadania")
	end

end
