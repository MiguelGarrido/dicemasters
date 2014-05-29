class AddRarityRefToCharacters < ActiveRecord::Migration
  def change
    add_reference :characters, :rarity, index: true
  end
end
