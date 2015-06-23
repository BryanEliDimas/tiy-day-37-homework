class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find params[:id]
  end

  def create
    @post = Post.new params.require(:post).permit(:title)
    if @post.save
      render :show, status: 201
    else
      render json: @post.errors, status: 422
    end
  end

  def update
    @post = Post.find params[:id]
    if @post.update params.require(:post).permit(:title)
      render :show, status: 200
    else
      render json: @post.errors, status: 422
    end
  end

  def delete
    @post = Post.find params[:id]

    if @post.destroy
      render :show, status: 200
    else
      render json: @post.errors, status: 422
    end
  end
end
