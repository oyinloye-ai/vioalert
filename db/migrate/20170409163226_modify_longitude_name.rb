class ModifyLongitudeName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :places, :longitude, :longitude
  end
end
