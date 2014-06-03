class RemoveTextFromCharacter < ActiveRecord::Migration
  def change
    remove_column :characters, :text, :text
    add_column :characters, :ability, :string
    add_column :characters, :burst_ability, :string
    add_column :characters, :double_burst_ability, :string
  end
end
