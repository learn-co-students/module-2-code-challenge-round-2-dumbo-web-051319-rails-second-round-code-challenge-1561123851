class HeroinesController < ApplicationController
  def index





    @heroines = Heroine.all
  end
  def show
      @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    heroine = Heroine.create(heroine_params)
    redirect_to heroine_path(heroine)
  end



  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :search)
  end


# added the search because reading this article to get it to work : https://medium.com/@yassimortensen/simple-search-form-in-rails-8483739e4042


# also tried the code in the bottom of this article https://stackoverflow.com/questions/12010780/search-in-rails
# but it would redirect me to the page about the powers not the super heros with the powers.

# hopefully it didnt mess anything up since I couldnt get the search to work

end
