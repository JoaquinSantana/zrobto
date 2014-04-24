require 'spec_helper'

feature 'guest' do
	scenario 'cant deleted task' do
		task = create(:task)

		visit tasks_path
		expect(page).to_not have_link("Usuń")
	end
end

feature 'user deleted task' do
	scenario 'with access' do
		task = create(:task)
		user = create(:user)
		sign_in(user)
		
		visit tasks_path

		expect{ click_link("Usuń") }.to change(Task, :count).by(-1)
	end
end
