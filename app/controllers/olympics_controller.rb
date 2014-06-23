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

  def show
    @olympic = Olympic.find(params[:id])
  end

  def edit
    @olympic = Olympic.find(params[:id])
  end

  def update
    @olympic = Olympic.find(params[:id])
    @olympic.update_attributes!(olympic_params)

    redirect_to olympics_path
  end

  def destroy
    @olympic = Olympic.find(params[:id]).delete

    redirect_to olympics_path
  end

  private
  def olympic_params
    params.require(:olympic).permit(:sport, :country)
  end
end