class RemoveAddressFromLocations < ActiveRecord::Migration[7.0]
  def change
    remove_column :locations, :address, :string
  end
end
