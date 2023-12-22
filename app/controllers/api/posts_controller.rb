class Api::PostsController < ApplicationController
    def index
        @posts = @user.posts
        render json: @posts
    end
end
