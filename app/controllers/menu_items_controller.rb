class MenuItemsController < ApplicationController

    def new
        @menu = MenuItem.new
        @categories = Category.all
    end

    def create
        flash[:notice] = "Menu Item has been created"
        menu = MenuItem.new(resource_params)
        category_ids = params[:menu_item][:categories]
        menu.category_ids = category_ids
        menu.save
        redirect_to menu_items_path
    end

    def index
        @menus = MenuItem.search(params[:search]).page(params[:page])
    end

    def edit
        @menu = MenuItem.find(params[:id])
        @categories = Category.all
        @category_ids = @menu.category_ids
    end

    def update
        flash[:notice] = "Menu Item has been updated"
        menu = MenuItem.find(params[:id])
        menu.attributes = resource_params
        category_ids = params[:menu_item][:categories]
        menu.category_ids = category_ids
        menu.save
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
