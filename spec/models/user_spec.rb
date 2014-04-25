require 'spec_helper'

describe User do
	before do
		@user = User.new(email: 'sanczo@gg.com', password: '12345678', password_confirmation: '12345678')
	end

	subject { @user }

	 it { should validate_presence_of(:email) }
	 it { should validate_presence_of(:password) }

	
	 it { should respond_to :tasks }
	 it { should be_valid }
end
