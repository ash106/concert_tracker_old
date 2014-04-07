class ConcertsController < ApplicationController
  def index
    @concerts = Concert.all
  end

  def show
    @concert = Concert.find(params[:id])
  end

  def edit
    @concert = Concert.find(params[:id])
  end

  def update
    @concert = Concert.find(params[:id])
    @concert.update(concert_params)
    redirect_to @concert
  end

private

  def concert_params
    params.require(:concert).permit(:bands, :venue, :location, :date)
  end
end
