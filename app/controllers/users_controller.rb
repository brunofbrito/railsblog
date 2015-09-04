class UsersController < Clearance::UsersController

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.update(params[:id], edit_user_params)
    redirect_to edit_user_path
  end

  def show
    @user = User.find(params[:id])
    @posts = Post.where(user_id: @user).order(created_at: :desc)
  end

  private

  def edit_user_params
    params.require(:user).permit(:name, :email, :password, :avatar)
  end

end
