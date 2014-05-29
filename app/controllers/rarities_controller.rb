class RaritiesController < ApplicationController
	 def index
    @rarities = Rarity.all
  end

  def show
    @rarity = Rarity.find(params[:id])
  end

  def new
    @rarity = Rarity.new
  end

  def create
    @rarity = Rarity.new(rarity_params)
 
    if @rarity.save
      redirect_to @rarity
    else
      render 'new'
    end
  end

  def edit
     @rarity = Rarity.find(params[:id])
  end

  def update
    @rarity = Rarity.find(params[:id])
 
    if @rarity.update(rarity_params)
      redirect_to @rarity
    else
      render 'edit'
    end
  end

  def destroy
    @rarity = Rarity.find(params[:id])
    @rarity.destroy
    redirect_to rarities_path
  end

  private
  def rarity_params
    params.require(:rarity).permit(:name) if params[:rarity]
  end
end
