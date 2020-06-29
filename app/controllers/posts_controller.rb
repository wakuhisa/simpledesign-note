class PostsController < ApplicationController
  def index
    # @post = Post.order(updated_at: :desc).limit(1)
    # @post_news = Post.order(created_at: :desc).limit(5)
    @posts = Post.all.order(created_at: :desc).limit(3)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to action: :index
    else
      redirect_to action: :new
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    if @post.update_attributes(post_params)
      redirect_to post_path
    else
      render action: :edit
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to :root
  end

  def archives
    @posts = Post.all.order(created_at: :desc)
  end

  private
  def post_params
    params.require(:post).permit(:text, :title, :image)
  end
end
