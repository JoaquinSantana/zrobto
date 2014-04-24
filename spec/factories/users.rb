# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do 
	#	sequence(:email) { |n| "sanczo#{n}@gmail.com" }
		sequence(:email) { |n| "sanczo#{n}@gmail.com" }
  	password '12345678'
  	password_confirmation '12345678'

  	factory :user_with_tasks do
	    after(:create) do |user|
	      create(:task, user: user)
	    end
    end
  end

  factory :task do
    name "MyString"
    description "Description"
    link "http://google.com"
    user
  end
end

=begin
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    name "MyString"
    description "Description"
    link "http://google.com"
    user
  end
end

=end