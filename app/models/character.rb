class Character < ActiveRecord::Base
# This method associates the attribute ":avatar" with a file attachment
has_attached_file :card_image, styles: {
thumb: '100x100>',
square: '200x200#',
medium: '300x300>'
}

# Validate the attached image is image/jpg, image/png, etc
validates_attachment_content_type :card_image, :content_type => /\Aimage\/.*\Z/


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
