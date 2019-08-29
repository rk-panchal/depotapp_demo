class AddUserTypeToUser < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :type, :string, default: :user # sets default value for existed records
    change_column :users, :type, :string, default: nil # changes default value for next
  end

  def down
    remove_column :users, :type
  end
end
