class PowersController < ApplicationController
  # 4. The power show page should have its name and description.
  #
  # 5. As a visitor to the website, I should be able to create a new heroine with her name and super name.
  #
  # 6. The form should also allow each heroine to be created with **only one of the existing powers**.


  def index
    @powers = Power.all
  end

  def show
      @power = Power.find(params[:id])
  end
end
