class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.text :text
      t.string :global

      t.timestamps
    end
  end
end
