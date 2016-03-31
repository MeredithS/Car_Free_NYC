class WelcomeController <ApplicationController

	def root
		@users = User.all
	end
	
end