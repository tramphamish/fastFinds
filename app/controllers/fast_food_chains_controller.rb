class FastFoodChainsController < ApplicationController
  def index
      if params[:food_item]
        food_item = params[:food_item]
      #  location = 
      # else
      #   location = params[]
      end

 @fast_food_chains = Unirest.get("https://api.nutritionix.com/v1_1/search/taco?results=0%3A50&cal_min=0&cal_max=50000&fields=item_name%2Cbrand_name%2Citem_id%2Cbrand_id&appId=2a67dbb4&appKey=eab1d2899f63f45de8177c6e513b443a").body

@results = @fast_food_chains['hits'][0]['fields']
end
end

