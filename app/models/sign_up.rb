class SignUp < ActiveRecord::Base

	def say_hello
		"Hello #{self.name}!"
	end

	def email
		read_attribute(:email) || "Unknown" # || = or
	end
end
