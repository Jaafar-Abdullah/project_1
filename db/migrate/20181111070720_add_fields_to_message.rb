class AddFieldsToMessage < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :group_id, :integer ,:default => 0
  end
end
