class RankingsController < ApplicationController
  def want
    @ranking_count = Want.ranking
    @item = Item.find(@ranking_counts.keys)
  end
end
