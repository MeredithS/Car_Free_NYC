class WelcomeController <ApplicationController

	def root
		@users = User.all
	end

	def sponsors
	end
end
