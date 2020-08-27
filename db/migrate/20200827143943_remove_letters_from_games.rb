class RemoveLettersFromGames < ActiveRecord::Migration[6.0]
  def change
    remove_column :games, :letters, :string
  end
end
