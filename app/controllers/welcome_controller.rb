class WelcomeController < ApplicationController
  def index
  end

  def create
  	@email = params[:email]

  	signup = SignUp.new params.permit(:email)

  	signup.save

  	begin 
  		
	  	#@user = SignUp.new
	  	#@user.name = params [:name]
	  	#@user.email = params [:email]
	  	#@user.save

	  	#with the @ sign, it makes it an instance variable where you can use the @user in the view
	 
	 #if @user.name.blank?
  			#render text: "you need to provide a name"
  		#else
  			#@user.save
  		#end
	 end

  	
  end

end
