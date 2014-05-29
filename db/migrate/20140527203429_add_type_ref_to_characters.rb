class AddTypeRefToCharacters < ActiveRecord::Migration
  def change
    add_reference :characters, :type, index: true
  end
end
