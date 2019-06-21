class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create

    @heroine = Heroine.create(heroine_params)
    redirect_to @heroine

  end

  def show
    @heroine = Heroine.find(params[:id])
    @power = @heroine.power
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end


end
