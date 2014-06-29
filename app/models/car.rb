class Car < ActiveRecord::Base
  validates :manufacturer, presence: true
  validates :color, presence: true
  validates :year, presence: true
  validates :mileage, presence: true
end
