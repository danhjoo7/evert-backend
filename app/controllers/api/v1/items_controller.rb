class Api::V1::ItemsController < ApplicationController

    def index
        items = Item.all 
        render json: items
    end

    def create
        item = Item.create(item_params)
        render json: item
    end

    def show
        item = Item.find(params[:id])
        render json: item 
    end

    def destroy
        item = Item.find(params[:id])
        item.destroy
        render json: {message: "Successfully removed from your items"}
    end

    private

    def item_params
        params.require(:item).permit(:name, :brand, :description, :price, :size)
    end
end

