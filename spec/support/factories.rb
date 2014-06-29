FactoryGirl.define do
  factory :manufacturer do
    sequence(:name) { |n| 'Obligatory Name#{n}' }
    country 'America'
  end
end
