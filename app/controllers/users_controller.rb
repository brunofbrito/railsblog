class UsersController < Clearance::UsersController

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.update(params[:id], edit_user_params)
    redirect_to edit_user_path
  end

  private

  def edit_user_params
    params.require(:user).permit(:name, :email, :password, :avatar)
  end

end
