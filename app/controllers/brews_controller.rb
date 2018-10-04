class BrewsController < ApplicationController
  def index
    @brews = Brew.all
  end

  def show
    @brew = Brew.find(params[:id])
  end

  def new
    @brew = Brew.new
  end

  def create
    @brew = Brew.new(brew_params)
    if @brew.save
      redirect_to brew_path(@brew)
    else
      render :new
    end
  end
  private
  def brew_params
    params.require(:brew).permit(:blend_name, :origin, :notes, :strength)
  end
end

# purchases/new
# dropdown for sizes

# collection select for both customer brew

# redirect to purchsae show page
# make edit/update using partial _form
