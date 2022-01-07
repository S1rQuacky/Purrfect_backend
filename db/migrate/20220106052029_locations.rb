class Locations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.text :description
      t.string :street
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.string :email
      t.string :photos

      t.timestamps
    end
  end
end
