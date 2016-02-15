class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.references :user, index: true
      t.boolean :accepted

      t.timestamps
    end
  end
end
