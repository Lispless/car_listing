FactoryGirl.define do
  factory :manufacturer do
    sequence(:name) { |n| "Obligatory Name#{n}" }
    country "America"
    description "This manufacturer has been cunstruction top end cars since at some point, you better believe it!"
    user
  end
end
