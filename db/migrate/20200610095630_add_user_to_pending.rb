class AddUserToPending < ActiveRecord::Migration[6.0]
  def change
    add_column :pendings, :user_id, :integer
  end
end
