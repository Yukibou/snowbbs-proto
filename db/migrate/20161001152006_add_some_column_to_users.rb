class AddSomeColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :wp_author_id, :string
    add_column :users, :wp_author_login, :string
  end
end
