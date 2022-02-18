class AddUserIdToChatters < ActiveRecord::Migration[7.0]
  def change
    add_column :chatters, :user_id, :integer
    add_index :chatters, :user_id
  end
end
