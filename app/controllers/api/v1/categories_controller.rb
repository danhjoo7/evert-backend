class Api::V1::CategoriesController < ApplicationController
    def index
        categories = Category.all 
        render json: categories
    end

    def create
        category = Category.create(category_params)
        render json: category
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


