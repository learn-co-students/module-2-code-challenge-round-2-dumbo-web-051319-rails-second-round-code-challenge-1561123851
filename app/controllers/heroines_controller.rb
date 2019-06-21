class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.search(params[:search])
  end

def show 
  @herione = Heroine.find(params[:id])
end

def new 
  @heroine = Heroine.new 
end

def create
  heroine = Heroine.create(heroine_params) 
  redirect_to heroine
end


private 

def heroine_params
  params.require(:heroine).permit(:power_id, :name, :super_name, :search)
  
end

end
