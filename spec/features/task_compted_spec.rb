require 'spec_helper'

feature 'user complted task' do 
	scenario 'its ok when mark complted' do
		user = create(:user)
		task = user.tasks.create(name: 'task', description: 'desc', link: 'http://o2.pl')

		expect(task.completed).to be_nil

		sign_in(user)
		click_link "Zrobione"
		task.reload
		expect(task.completed).to_not be_nil
		expect(page).to have_content("Zadanie zostało wykonane")
	end
end