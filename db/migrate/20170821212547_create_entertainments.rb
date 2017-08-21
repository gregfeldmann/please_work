class CreateEntertainments < ActiveRecord::Migration
  def change
    create_table :entertainments do |t|
      t.string :picture
      t.string :title
      t.string :category
      t.string :rating
      t.integer :sender_id
      t.integer :receiver_id

      t.timestamps

    end
  end
end
