class PagesController < ApplicationController
  
  def home
    @totalitems = Item.all.count+124983
  end
  
end
