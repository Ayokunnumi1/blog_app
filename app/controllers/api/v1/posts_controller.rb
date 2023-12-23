class Api::v1::PostsController < ApplicationController
    def index
        @posts = @user.posts
        render json: @posts
    end
end
