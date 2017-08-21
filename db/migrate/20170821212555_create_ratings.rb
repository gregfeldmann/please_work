class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :entertainment_id
      t.string :rating

      t.timestamps

    end
  end
end
