require 'spec_helper'

feature 'guest' do
	scenario 'cant edit task' do
		task = create(:task)
		visit edit_task_path(task)

		expect(current_path).to eq new_user_session_path
		expect(page).to have_content("Sign in")
		expect(page).to_not have_content("Task was successfully updated.")
	end
end

feature 'user edit task' do
	scenario 'with valid data' do
		user = create(:user_with_tasks)
		task = user.tasks.first
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
		user = create(:user_with_tasks)
		task = user.tasks.first
		sign_in(user)

		visit edit_task_path(task)

		fill_in("Description", with: '')
		click_button("Save")

		expect(page).to have_content("Edit Task")
	end
end
