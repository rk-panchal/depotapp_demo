class AddUserEmailToUser < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :email, :string, default: :'admin@woodenstore.com' # sets default value for existed records
    change_column :users, :email, :string, default: nil # changes default value for next
  end

  def down
    remove_column :users, :email
  end
end
