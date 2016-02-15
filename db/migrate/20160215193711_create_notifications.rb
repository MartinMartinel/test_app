class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.references :user, index: true
      t.string :message
      t.string :notification_type
      t.string :sender

      t.timestamps
    end
  end
end
