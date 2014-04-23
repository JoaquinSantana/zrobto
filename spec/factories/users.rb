# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	email 'sqanczo@o2.pl'
  	password '12345678'
  	password_confirmation '12345678'
  end
end
