require 'spec_helper'

feature 'user add task' do
	scenario 'with valid data' do
		visit new_task_path
		fill_in("Name", with: "Test")
		fill_in("Description", with: "Description")
		fill_in("Link", with: "http://google.com")

		expect{ click_button("Save") }.to change(Task, :count).by(1)
	end

	scenario 'with wrong data' do
		visit new_task_path

		expect{ click_button("Save") }.to_not change(Task, :count).by(1)
		expect(page).to have_content("New task")
	end
end