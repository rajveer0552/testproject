class ApplicationController < ActionController::Base
	before_action :display_callback
	after_action :display_callback2
	private
	def display_callback
		puts"when you reload your app i am here"
	end
	def display_callback2
		puts"when you reload your app i am also here but boottom side"
	end
end
