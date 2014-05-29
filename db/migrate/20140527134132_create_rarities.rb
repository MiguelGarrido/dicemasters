class CreateRarities < ActiveRecord::Migration
  def change
    create_table :rarities do |t|
      t.string :name
      t.timestamps
    end

    def change
    	add_column :characters, :rarity, :rarity
  	end
  end
end