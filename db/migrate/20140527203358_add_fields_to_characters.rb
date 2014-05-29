class AddFieldsToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :subtitle, :string
    add_column :characters, :cost, :integer
    add_column :characters, :collector_number, :integer
    add_column :characters, :die_limit, :integer
  end
end
