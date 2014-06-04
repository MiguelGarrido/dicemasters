class CharactersController < ApplicationController

  before_filter :load_selects, only: [:new, :edit, :create]

  def index
    @characters = Character.order(:collector_number)
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)

 
    if @character.save
      redirect_to characters_path
    else
      render 'new'
    end
  end

  def edit
     @character = Character.find(params[:id])     
  end

  def update
    @character = Character.find(params[:id])

    if @character.update(character_params)      
      redirect_to @character
    else      
      render 'edit'
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to characters_path
  end

  private
  def character_params
    params.require(:character).permit(:name, :text, :global, 
                                      :collector_number, :subtitle, :die_limit, 
                                      :cost, :type_id, :affiliation_id, :rarity_id, :card_image) if params[:character]
  end

  def load_selects
    @types = Type.all.map { |type| [type.name, type.id] }
    @affiliations = Affiliation.all.map { |affiliation| [affiliation.name, affiliation.id] }
    @rarities = Rarity.all.map { |rarity| [rarity.name, rarity.id] }
  end

end
