class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = PostImage.find(params[:id])
    @user.update(user_registration_params)
    redirect_to edit_user_path
  end


  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
  
end
