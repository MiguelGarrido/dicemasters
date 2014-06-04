ActiveAdmin.register Character do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  filter :name  
  filter :affiliation
  filter :type
  filter :rarity
  config.per_page = 10

  index do
    column :collector_number
    column "Name" do |character|
      link_to character.name, admin_character_path(character)
    end    
    column :subtitle
    column :ability
    column :burst_ability
    column :double_burst_ability
  end
  

end
