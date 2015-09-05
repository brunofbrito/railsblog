class PostsController < ApplicationController

  def index
    @blog = Settings.find(1)
    @posts = Post.paginate(:page => params[:page]).order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
    @author = User.find(@post.user_id).name
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to root_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end

  private
    # Using a private method to encapsulate the permissible parameters is
    # just a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    def post_params
      params.require(:post).permit(:title, :description, :featimg)
    end

end
