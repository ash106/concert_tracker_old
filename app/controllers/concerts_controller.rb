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

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new(concert_params)
    @concert.save
    redirect_to @concert
  end

private

  def concert_params
    params.require(:concert).permit(:bands, :venue, :location, :date)
  end
end
