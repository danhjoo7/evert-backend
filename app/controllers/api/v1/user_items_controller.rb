class Api::V1::UserItemsController < ApplicationController
    def index
        user_items = UserItem.all
        render json: user_items
    end

    def show
       user_item = UserItem.find(params[:id])
      render json: user_item
    end

    def create
      user_item = UserItem.create(user_item_params)  
    end
     
    private
    
    def user_item_params
      params.require(:user_item).permit(:user_id, :item_id, :favorite, :seller, :buyer)
    end
end