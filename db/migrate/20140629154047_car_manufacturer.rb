class CarManufacturer < ActiveRecord::Migration
  def change
  	create_table :manufacturer do |t|
  		t.string :name, null: false
  		t.string :country, null: false

  		t.timestamps
  end
end
