class BandsController < ApplicationController
  before_action :set_concert
  
  def index
    @bands = @concert.bands
  end

  def new
    @band = @concert.bands.new
  end

  def create
    @band = @concert.bands.new(band_attributes)
    if @band.save
      redirect_to concert_bands_path(@concert), notice: "Band has successfully been added!"
    else
      render :new
    end
  end

private

  def set_concert
    @concert = Concert.find(params[:concert_id])
  end

  def band_attributes
    params.require(:band).permit(:name)
  end

end
