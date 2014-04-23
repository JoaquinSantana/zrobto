require 'spec_helper'

feature 'user edit task' do
	scenario 'with valid data' do
		task = create(:task)
		user = create(:user)
		sign_in(user)
		visit edit_task_path(task)

		fill_in("Name", with: "Nowe imie")
		fill_in("Description", with: "Nowy opis")
		fill_in("Link", with: 'https://onet.pl')
		click_button("Save")

		expect(page).to have_content("Task was successfully updated.")
		expect(page).to have_content("Nowe imie")
	end

	scenario 'with wrong data' do
		task = create(:task)
		visit edit_task_path(task)

		fill_in("Description", with: '')
		click_button("Save")

		expect(page).to have_content("Edit Task")
	end
end

def sign_in(user, opt={})
	visit new_user_session_path
	fill_in("Email", with: user.email)
	fill_in("Password", with: (opt[:password] || user.password))
	click_button("Sign in")
end