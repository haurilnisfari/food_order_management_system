class OrderLinesController < ApplicationController

  
  def new
    @line = OrderLine.new
    @customers = Customer.all
    @menus = MenuItem.all
  end

  def create
    line = OrderLine.new(resource_params)
    line.save
  end


  def index
    @lines = OrderLine.all
    @menus = MenuItem.all
  end

end
