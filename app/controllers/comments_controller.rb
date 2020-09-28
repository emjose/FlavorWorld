class CommentsController < ApplicationController

    def index
        @comments = Comment.all
        render json: @comments
    end

    def create
        @comment = Comment.create(comment_params)
        if @comment.valid?
            render json: @comment, status: 201
        else
            render json: {errors: @comment.errors.full_messages}, status: 422
        end
    end

    def update
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
        render json: @comment, status: 200
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
    end

    private

    def comment_params
        params.permit(:content)
    end
end
