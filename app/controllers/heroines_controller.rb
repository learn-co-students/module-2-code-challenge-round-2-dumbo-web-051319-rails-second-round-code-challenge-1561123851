class HeroinesController < ApplicationController
 #  2. On the heroines index page, a heroine's super name should link to that heroine's show page.
 #
 #  3. The heroine show page should include the heroine's name (eg. Kamala Khan), her super name (eg. Ms. Marvel), and her power. The power should link to the power show page.
 #
 # Make sure no two heroines have the same super name.


  def index
    @heroines = Heroine.all
  end

  def show
   @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
      @heroine = Heroine.create
      if @heroine.valid?
      redirect_to "/heroines"
    elsif
      flash[:errors]= @heroine.errors.full_messages
      # byebug
      redirect_to new_heroine_path
    end
  end

end
