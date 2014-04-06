class ConcertsController < ApplicationController
  def index
    @concerts = ["Concert 1", "Concert 2", "Concert 3"]
  end
end
