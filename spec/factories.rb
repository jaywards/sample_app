FactoryGirl.define do
	factory :user do
		name "Jason Wardwell"
		email "jwardwell@gmail.com"
		password "foobar"
		password_confirmation "foobar"
	end
end