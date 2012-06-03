class PagesController < ApplicationController
  
  def home
    @totalitems = Item.all.count+124983
    @frontsales = Item.sum('sale')
    @frontcosts = Item.sum('cost')
    @frontfees = Item.sum('fees')
  end
  
end
