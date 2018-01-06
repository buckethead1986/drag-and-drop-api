class FavoritePoems < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_poems do |t|
      t.integer :user_id
      t.integer :poem_id
      
      t.timestamps
    end
  end
end
