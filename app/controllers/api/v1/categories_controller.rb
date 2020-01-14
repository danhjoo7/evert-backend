class Api::V1::CategoriesController < ApplicationController
    def index
        categories = Category.all 
        render json: categories
    end

    def show
        category = category.find(params[:id])
        render json: category 
    end

    private

    def categories_params
        params.require(:category).permit(:item_id, :description, :user, :place)
    end

  
end


