require 'spec_helper'

feature 'user deleted task' do
	scenario 'with access' do
		task = create(:task)
		user = create(:user)
		sign_in(user)
		
		visit tasks_path

		expect{ click_link("Usuń") }.to change(Task, :count).by(-1)
	end
end

def sign_in(user, opt={})
	visit new_user_session_path
	fill_in("Email", with: user.email)
	fill_in("Password", with: (opt[:password] || user.password))
	click_button("Sign in")
end