class MenuItemsController < ApplicationController

    def new
        @menu = MenuItem.new
    end

    def create
        flash[:notice] = "Menu Item has been created"
        menu = MenuItem.new(resource_params)
        menu.save
        redirect_to menu_items_path
    end

    def index
        @menus = MenuItem.search(params[:search])
        # @menus = MenuItem.all
    end
    
    def edit
        @menu = MenuItem.find(params[:id])
    end

    def update
        flash[:notice] = "Menu Item has been updated"
        menu = MenuItem.find(params[:id])
        menu.update(resource_params)
        redirect_to menu_items_path
    end


    def show
        @menu = MenuItem.find(params[:id])
    end

    def destroy
        flash[:notice] = "Menu Item has been deleted"
        @menu = MenuItem.find(params[:id])
        @menu.destroy
        redirect_to menu_items_path
    end

    private

    def resource_params
        params.require(:menu_item).permit(:name, :price, :note)
    end

end
