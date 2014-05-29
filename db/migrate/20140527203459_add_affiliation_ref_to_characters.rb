class AddAffiliationRefToCharacters < ActiveRecord::Migration
  def change
    add_reference :characters, :affiliation, index: true
  end
end
