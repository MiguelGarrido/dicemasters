ActiveAdmin.register Character do

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :name, :text, :global, :collector_number, :subtitle, :die_limit, :cost, :type_id, :affiliation_id, :rarity_id, :card_image

  filter :name
  filter :subtitle
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

 form do |f|
    f.inputs "Character Details" do
      f.input :collector_number
      f.input :name
      f.input :subtitle
      f.input :cost
      f.input :type
      f.input :affiliation
      f.input :ability
      f.input :burst_ability
      f.input :double_burst_ability
      f.input :card_image, :hint => f.template.image_tag(character.card_image.url(:medium))      
      f.input :rarity
    end
    f.actions
  end
 
  show do |ad|
      attributes_table do
        row :collector_number
        row :name
        row :subtitle
        row :cost
        row :type
        row :affiliation
        row :ability
        row :burst_ability
        row :double_burst_ability
        row :card_image do
          image_tag(character.card_image.url(:medium))          
        end
        row :rarity                
      end
    end


end
