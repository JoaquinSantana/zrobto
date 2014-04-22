# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	email 'sanczo@o2.pl'
  	password '12345678'
  	password_confirmation '12345678'
  end
end
