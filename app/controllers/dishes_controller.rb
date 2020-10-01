class DishesController < ApplicationController

    def index
        dishes = Dish.all
        render json: dishes
    end

    def show
        dish = Dish.find(params[:id])
        render json: dish
    end

    def new
        dish = Dish.new
        render json: dish
    end

    def create
        dish = Dish.create(dish_params) 
        render json: dish
    end

    def edit 
    end

    def update 
        dish = Dish.find(params[:id])
        dish.update(dish_params)
        render json: dish
    end

    def destroy 
        dish = Dish.find(params[:id])
        dish.destroy
        render json: dish
    end

    private

    def dish_params
        params.permit(:origin, :name, :description, :likes, :image_url)
    end

end


