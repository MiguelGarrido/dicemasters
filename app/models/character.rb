class Character < ActiveRecord::Base
	 validates :name, presence: true
	 validates :subtitle, presence: true	 
	 validates :cost, presence: true
	 validates :rarity, presence: true
	 validates :type, presence: true
	 validates :affiliation, presence: true

	 belongs_to :rarity
	 belongs_to :type
	 belongs_to :affiliation
end
