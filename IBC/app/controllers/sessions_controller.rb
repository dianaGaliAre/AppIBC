class SessionsController < ApplicationController
	before_action :require_user, only: [:index, :show]
  	
  	def new
  	end

 	def create
	  @user = User.find_by(nombre: params[:session][:nombre])
	  #@user = User.all
	  if @user && @user.authenticate(params[:session][:password])
	    session[:user_id] = @user.id
	    redirect_to '/ibc'
	  else
	    redirect_to '/login'
	  end 
	end

	def destroy 
	  session.delete(:user_id)
	  current_user = nil 
	  redirect_to '/login' 
	end
end
