class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post, index: true
      t.references :user, index: true
      t.string :content

      t.timestamps
    end
  end
end
