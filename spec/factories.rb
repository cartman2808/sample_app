FactoryGirl.define do
	factory :user do
		name 			'another'
		email 		'world@dotemu.fr'
		password 	'foobar'	
		password_confirmation 'foobar'
	end
end