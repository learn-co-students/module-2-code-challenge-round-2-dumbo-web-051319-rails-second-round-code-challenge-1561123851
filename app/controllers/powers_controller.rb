class PowersController < ApplicationController
  def index
    @heroine = Heroine.search(params[:search])
    @heroines = Heroine.all


  end
def show
    @power = Power.find(params[:id])

end

end
