class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		
			if @user.save
		      redirect_to '/'
		    else
		      render text: "You gotta fill out all fields yo!"
		    end
	end

	def user_params
		params.require(:user).permit(:name, :email, :phone_number)
	end

end
