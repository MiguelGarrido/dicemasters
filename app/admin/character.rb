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
  config.sort_order = "collector_number_asc"
  
  index do
    column "#", :collector_number
    column :name
    column :subtitle
    column :cost
    column :type
    column :ability
    column "*", :burst_ability
    column "**", :double_burst_ability
    column :affiliation
    column :rarity
    actions
  end  
end
