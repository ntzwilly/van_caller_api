class ChangeColumnDefaultForCountry < ActiveRecord::Migration[7.0]
  def change
    change_column_default :locations, :country, 'Canada'
  end
end
