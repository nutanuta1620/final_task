class PostsController < ApplicationController
    def index
        @posts = Post.all.order("created_at DESC")
    end
    def create
        Post.create(memo: params[:memo])
    end
end
