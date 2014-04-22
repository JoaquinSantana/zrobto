require 'spec_helper'

feature 'user deleted task' do
	scenario 'with access' do
		task = create(:task)
		visit tasks_path

		expect{ click_link("Usuń") }.to change(Task, :count).by(-1)
	end
end