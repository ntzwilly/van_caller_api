class AddStreetToLocations < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :street, :string
  end
end
