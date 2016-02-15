class AddNewNotificationsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :new_notifications, :integer
  end
end
