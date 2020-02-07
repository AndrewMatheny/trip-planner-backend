class ItemsController < ApplicationController
    def index
        @items = Item.all 
        render :json => @items
    end

    def show
        @item = Item.find(params[:id])
        render :json => @item
    end

    def create 
        @trip = Trip.find(params[:trip_id])
        @item = Item.new(item_params)
        @item.save 
        render :json => @item 
    end 

    def edit 
        @item = Item.find(params[:id])
    end 

    def update 
        @item = Item.find(params[:id])
        @item.update(item_params)
        render :json => @item
    end 

    def destroy
        @item = Item.find(params[:id])
        @item.delete
    end

    private 
    def item_params
        params.require(:item).permit(:name, :quantity, :is_packed, :trip_id)
    end 
end
