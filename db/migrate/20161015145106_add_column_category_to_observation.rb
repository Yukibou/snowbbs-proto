class AddColumnCategoryToObservation < ActiveRecord::Migration[5.0]
  def change
    add_column :observations, :category, :string
  end
end
