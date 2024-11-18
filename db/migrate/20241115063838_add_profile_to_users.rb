class AddProfileToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :bio, :text
    add_column :users, :website, :string
    add_column :users, :twitter, :string
    add_column :users, :instagram, :string
    add_column :users, :facebook, :string
  end
end
