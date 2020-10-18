class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    (@post.save) ? (redirect_to post_path(@post)): (render 'new')
  end
  def show
    @post = Post.find(params[:id])
  end
  def edit
    @post = Post.find(params[:id])
  end
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    (@post.update(post_params)) ? (redirect_to post_path(@post)): (render "/posts/#{@post.id}/edit")
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to "/posts"
  end
  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end