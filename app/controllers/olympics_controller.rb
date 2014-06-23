class OlympicsController < ApplicationController

  def index
    @olympic = Olympic.new
    @olympics = Olympic.all
  end

  def create
    @olympic = Olympic.create(olympic_params)
    if @olympic.save
      redirect_to olympics_path
    else
      render :index
    end
  end

  private
  def olympic_params
    params.require(:olympic).permit(:sport, :country)
  end
end