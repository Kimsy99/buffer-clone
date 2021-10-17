class RegistrationsController < ApplicationController
	def new
		@user = User.new # @ -> instance variable -> visible in view
	end
	def create
		# params ==> Parameters: {"authenticity_token"=>"[FILTERED]", "user"=>{"email"=>"test@gmail.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Sign Up"}
		# render plain: params[:user] # return {"email"=>"test@gmail.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Sign Up"}
		@user = User.new(user_params) # create new user
		if @user.save #save to db
      session[:user_id] = @user.id # add userID in session
			redirect_to root_path, notice: "Successfully created account!!" #redirect to home page
		else
			render :new
		end
	end

	private
	
	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end
