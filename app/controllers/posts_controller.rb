class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find params[:id]
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new params.require(:post).permit(:title)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find params[:id]
  end

  def delete
    @post = Post.find params[:id]
    @post.destroy
    redirect_to root_path
  end
end
