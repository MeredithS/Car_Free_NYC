class SessionsController <ApplicationController	
	def new
		if session[:admin_id]
			redirect_to admins_url
		end
	end

	#/
	def create
		admin = Admin.find_by(username: params["/login"][:username])
		if admin && admin.authenticate(params["/login"][:password])
			session[:admin_id] = admin.id
			flash[:notice] = "Great Job signing in welcome"
			redirect_to admins_url
		else 
			flash[:notice] = "Incorrect e-mail and/or password. Please try again."
			render :new
		end
	end

	#/logout
	def destroy
		session[:admin_id] = nil
		flash[:notice] = "You are logged out"
		redirect_to login_url
	end
end