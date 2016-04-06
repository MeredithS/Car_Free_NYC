class AdminsController <ApplicationController
	before_action :authorize
	before_action :counter

	def new
		@admin=Admin.new
	end

	def create
		@admin = Admin.create(username: params[:admin][:username], password: params[:admin][:password], password_confirmation: params[:admin][:password_confirmation])
		@admin.save
		redirect_to login_url
	end

	def index
		
	end
end
