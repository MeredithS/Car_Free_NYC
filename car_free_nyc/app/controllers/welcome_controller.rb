class WelcomeController <ApplicationController
	before_action :counter
	
	def root
		@users = User.all
	end

	def sponsors
	end
end
