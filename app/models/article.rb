class Article < ApplicationRecord
	validates :name, :last_name, length: {minimum: 2,maximum: 15}
	validates :mobile_number, length: {minimum: 10}
	validates :adhar_number, uniqueness: true
	
	before_create :display_greetings
	def display_greetings
		puts"hello your before callback is working"
	end
end
