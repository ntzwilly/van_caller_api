class ChangeColumnDefaultForState < ActiveRecord::Migration[7.0]
  def change
    change_column_default :locations, :state, 'New Brunswick'
  end
end
