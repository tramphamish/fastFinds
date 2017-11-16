class FastFoodChainsController < ApplicationController
  def index
    # @menus = Unirest.get("https://api.nutritionix.com/v1_1/search#{userInput}?fields=item_name%2Citem_id%2Cbrand_name%2Cnf_calories%2Cnf_total_fat&appId=2a67dbb4&appKey=7a2aa80deba0f172435896c5780b71f4").body
    # @menu_item = @menus 
    render :index
  end
end

