class SocailHandlesController < ApplicationController
	def index
	end

	def new
		@socialHandle = SocialHandle.new
	end

	def create
	end
	
end