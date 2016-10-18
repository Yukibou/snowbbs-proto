class AddColumnElevationLowForObservation < ActiveRecord::Migration[5.0]
  def change
    add_column :observations, :elevation_low, :integer
    add_column :observations, :elevation_high, :integer
  end
end
