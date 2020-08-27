class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.date :date
      t.string :letters
      t.string :key_letter
      t.text :words, array: true, default: []

      t.timestamps
    end
    add_index :games, :words, using: 'gin'
  end
end
