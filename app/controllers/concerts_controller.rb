class ConcertsController < ApplicationController
  def index
    @concerts = Concert.attended
  end

  def show
    @concert = Concert.find(params[:id])
  end

  def edit
    @concert = Concert.find(params[:id])
  end

  def update
    @concert = Concert.find(params[:id])
    if @concert.update(concert_params)
      redirect_to @concert
    else
      render :edit
    end
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new(concert_params)
    if @concert.save
      redirect_to @concert
    else
      render :new
    end
  end

  def destroy
    @concert = Concert.find(params[:id])
    @concert.destroy
    redirect_to concerts_url
  end

private

  def concert_params
    params.require(:concert).permit(:bands, :venue, :location, :date)
  end
end
