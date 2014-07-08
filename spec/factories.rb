FactoryGirl.define do 
	factory :product do |f|
		f.name "mark"
		f.cost 2345
		f.qty 45
		f.available 2659
		f.manufacture_date Date.today
		f.expire_date  Date.today + 365
	end
end
