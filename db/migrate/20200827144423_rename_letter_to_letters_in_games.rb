class RenameLetterToLettersInGames < ActiveRecord::Migration[6.0]
  def change
    rename_column :games, :letter, :letters
  end
end
