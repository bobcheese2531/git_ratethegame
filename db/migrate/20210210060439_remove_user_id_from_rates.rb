class RemoveUserIdFromRates < ActiveRecord::Migration[5.2]
  def change
    remove_column :rates, :user_id, :integer
  end
end
