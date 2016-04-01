class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user=User.new
	end

	def create
		@user = User.new user_params
		@user.date = DateTime.now
		if @user.save
			@user.social_handles.create social_params
			flash[:notice] = "Thank you " + @user.f_name + " for your pledge!"
			redirect_to pledge_confirmation_url
		end
	end
	
end

private
	def user_params
		params.require(:user).permit(:f_name, :l_name, :e_mail, :commitment, :org, :date, :share_info?)
	end

	def social_params
		params.require(:social_handle).permit(:twitter, :facebook, :instagram)
	end