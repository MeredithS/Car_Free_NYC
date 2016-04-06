class User < ActiveRecord::Base
	acts_as_xlsx
	has_many :social_handles
end