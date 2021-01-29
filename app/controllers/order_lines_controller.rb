class OrderLinesController < ApplicationController

  def index
    @lines = OrderLine.all
    @menus = MenuItem.all
  end

end
