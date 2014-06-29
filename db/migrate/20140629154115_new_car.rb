class NewCar < ActiveRecord::Migration
  def change
  	create_table :car do |t|
  		t.string :manufacturer, null: false
  		t.string :color, null: false
  		t.integer :year, null: false
  		t.integer :mileage, null: false
  		t.text :description

  		t.timestamps
  	end
  end
end