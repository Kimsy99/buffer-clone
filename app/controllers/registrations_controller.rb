class RegistrationsController < ApplicationController
	def new
		@user = User.new # @ -> instance variable -> visible in view
	end
	def create
		# params ==> Parameters: {"authenticity_token"=>"[FILTERED]", "user"=>{"email"=>"test@gmail.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Sign Up"}
		# render plain: params[:user] # return {"email"=>"test@gmail.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Sign Up"}
		@user = User.new(user_params) # create new user
		if @user.save
			redirect_to root_path, notice: "Successfully created account!!"
		else
			render :new
		end
	end

	private
	
	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end