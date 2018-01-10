class CreatePoemWords < ActiveRecord::Migration[5.1]
  def change
    create_table :poem_words do |t|
      t.integer :poem_id
      t.integer :word_id

      t.timestamps
    end
  end
end