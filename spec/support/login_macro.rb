module LoginMacro

	def sign_in(user, opt={})
		visit new_user_session_path
		fill_in("Email", with: user.email)
		fill_in("Password", with: (opt[:password] || user.password))
		click_button("Sign in")
	end
end