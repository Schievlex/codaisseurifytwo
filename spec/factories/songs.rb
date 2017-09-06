FactoryGirl.define do
  factory :song do
    title  		{ Faker::Name.title }
    album   	{ Faker::Name.last_name }
    release_year { Faker::Number.number(4) }
  end
end