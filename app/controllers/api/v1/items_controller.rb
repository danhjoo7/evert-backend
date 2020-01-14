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

    #custom method to create user_item 

    def destroy
        item = Item.find(params[:id])
        item.destroy
        render json: {message: "Successfully removed from your items"}
    end

    private

    def item_params
        params.require(:item).permit(:category_id, :user_id, :name, :brand, :description, :price, :size)
    end
end

