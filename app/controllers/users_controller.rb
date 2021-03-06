class UsersController < ApplicationController
	before_action :counter

	def index
		@users = User.all.order("date desc")
	end

	def new
		@user=User.new
	end

	def create
		@user = User.create user_params
		@user.date = DateTime.now
		@user.save
		if @user.save
			@user.social_handles.create social_params
			flash[:notice] = "Thank you " + @user.f_name + " for your pledge!"
			redirect_to pledge_confirmation_url
		end
	end

end

private
	def user_params
		params.require(:user).permit(:f_name, :l_name, :e_mail, :commitment, :org, :date, :share_info, :make_public)
	end

	def social_params
		params.require(:social_handle).permit(:twitter, :facebook, :instagram)
	end
