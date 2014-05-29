class AffiliationsController < ApplicationController

 def index
    @affiliations = Affiliation.all
  end

  def show
    @affiliation = Affiliation.find(params[:id])
  end

  def new
    @affiliation = Affiliation.new
  end

  def create
    @affiliation = Affiliation.new(affiliation_params)
 
    if @affiliation.save
      redirect_to @affiliation
    else
      render 'new'
    end
  end

  def edit
     @affiliation = Affiliation.find(params[:id])
  end

  def update
    @affiliation = Affiliation.find(params[:id])
 
    if @affiliation.update(affiliation_params)
      redirect_to @affiliation
    else
      render 'edit'
    end
  end

  def destroy
    @affiliation = Affiliation.find(params[:id])
    @affiliation.destroy
    redirect_to affiliations_path
  end

  private
  def affiliation_params
    params.require(:affiliation).permit(:name)  if params[:affiliation]
  end

end
