# class SavedDishesController < ApplicationController

#     def index
#         @saved_dishes = SavedDish.all
#         render json: saved_dishes
#     end

#     def show 
#         @saved_dishes = Comment.find(params[:id])
#         render json: @comment 
#     end

#     def create
#         saved_dish = SavedDish.create(saved_dish_params)
#         render json: saved_dish
#     end

#     private

#     def saved_dish_params
#         params.permit(:user_id, :dish_id)
#     end

# end


# def index
#     saved_dishes=  SavedDish.all
#     render json: saved_dishes
# end

# def create
#     saved_dish = SavedDish.create(saved_dish_params)
#     render json: saved_dish
# end