class CreateReceivers < ActiveRecord::Migration
  def change
    create_table :receivers do |t|
      t.integer :entertainment_id
      t.integer :user_id

      t.timestamps

    end
  end
end
