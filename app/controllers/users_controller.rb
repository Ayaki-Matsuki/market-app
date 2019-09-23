class UsersController < ApplicationController


  def index
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      flash[:notice] = 'マイページを更新しました'
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :address, :phonenumber)
  end
end
