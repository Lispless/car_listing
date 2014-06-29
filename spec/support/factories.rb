FactoryGirl.define do
  factory :manufacturer do
    name 'Mazda'
    country 'Japan'
  end

  factory :car do
    manufacturer 'Mazda'
    color 'Red'
    year '1990'
    mileage '100,000'
    description 'It\'s a little odd that the make doesn\'t have to be addressed.'
  end
end
