class RankingController < ApplicationController
  
def wanted_ranking
    @counts = Want.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
    ids = @counts.keys
    @items = Item.find(ids).sort_by{|o|  ids.index(o.id)}
    @title = "wanted"
end

def haved_ranking
    @counts = Have.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
    ids = @counts.keys
    @items = Item.find(ids).sort_by{|o|  ids.index(o.id)} 
    @title = "haved"
end

end

