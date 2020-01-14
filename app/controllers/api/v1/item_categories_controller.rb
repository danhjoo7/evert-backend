class Api::V1::ItemCategoriesController < ApplicationController
    def index
        item_categories = ItemCategory.all 
        render json: item_categories
    end

    def show
        item_category = item_category.find(params[:id])
        render json: item_category 
    end

    # private

    # def item_categories_params
    #     params.require(:category).permit(:item_id, :description, :user, :place)
    # end

  
end