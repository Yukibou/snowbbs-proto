class AddReferencesAreaToObservations < ActiveRecord::Migration[5.0]
  def change
    add_reference :observations, :area, index: true
  end
end
