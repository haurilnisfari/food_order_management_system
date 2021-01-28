class CustomersController < ApplicationController

    def new
        @customer = Customer.new
        @orders = Order.all
    end

    def create
        flash[:notice] = "Customer has been created"
        customer = Customer.new(resource_params)
        customer.save
        redirect_to customers_path
    end


    def index
        @customers = Customer.page(params[:page])
    end


    def edit
        @customer = Customer.find(params[:id])
    end

    def update
        flash[:notice] = "Customer has been updated"
        customer = Customer.find(params[:id])
        customer.update(resource_params)
        redirect_to customers_path
    end

    def destroy
        flash[:notice] = "Customer has been deleted"
        @customer = Customer.find(params[:id])
        @customer.destroy
        redirect_to customers_path
    end

    private

    def resource_params
        params.require(:customer).permit(:name, :phone)
    end

end