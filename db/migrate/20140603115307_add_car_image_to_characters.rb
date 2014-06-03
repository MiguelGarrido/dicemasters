class AddCarImageToCharacters < ActiveRecord::Migration
   def self.up
    add_attachment :characters, :card_image
  end

  def self.down
    remove_attachment :characters, :card_image
  end
end
