class LikesController < ApplicationController
    def update
        like = Like.find(params[:id])
        like.update(like_params)

        render json: like
    end

    def create
        like = Like.create(user_id: @current_user.id, dish_id: params[:dish_id])
        render json: like
    end

    def destroy
        @unliking_post = Post.find(params[:id])
        @like_ship = Like.find_by(user_id: @current_user.id, post_id: @unliking_post.id)
        @like_ship.delete
        redirect_to post_path(@unliking_post.id)
    end

    private

    def like_params
        params.permit()
    end

end
