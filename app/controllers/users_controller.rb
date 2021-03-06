class UsersController < ApplicationController

	before_action :authenticate_user!

	def index
		user = current_user
		@users = User.page(params[:page]).per(3).order('updated_at DESC')
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
    if  @user.id != current_user.id
        redirect_to user_path(current_user)
    end
	end

	def update
		@user = User.find(params[:id])
	if  @user.update(user_params)
	    redirect_to user_path(@user.id)
	else
	    render 'edit'
	end
	end

 private
	def user_params
	    params.require(:user).permit(:name, :profile_image,:introduction)
	end
end
