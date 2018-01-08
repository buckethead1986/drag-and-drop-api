class CreateFavoritedPoems < ActiveRecord::Migration[5.1]
  def change
    create_table :favorited_poems do |t|
      t.integer :user_id
      t.integer :poem_id

      t.timestamps
    end
  end
end
