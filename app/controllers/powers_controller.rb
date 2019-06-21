class PowersController < ApplicationController
  def index
    @powers = Power.all
    @heroines = Heroine.all
    # @heroine = Heroine.find(params[:id])
  end

  def new
    @power = Power.new
    @heroines = Heroine.all
  end

  def create
    @power = Power.create(power_params)
  end

  def show
    @power = Power.find(params[:id])
  end

  private

  def power_params
    params.require(:power).permit(:name, :description)
  end
end
