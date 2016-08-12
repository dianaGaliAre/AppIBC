class UsersController < ApplicationController
	before_action :require_user, only: [:index, :show]

	def index
		#@user = User.where("profesor_id <> 0").includes(:profesor)
		@user = Instructor.joins("LEFT JOIN users ON users.instructor_id = instructors.id where instructor_id <> 0 OR instructor_id IS NULL ORDER BY instructors.nombre") #.references(:user)
		#@profesor = Profesor.all #joins("RIGHT JOIN users ON users.profesor_id = profesors.id")
	end

	def new
		@user = User.new
		@instructor = Instructor.all
	end

	def create 
		#if @use = User.find_by(params[:nombre])
		instructor = Instructor.find(params[:user][:nombre])
		@user = User.new(user_params)
		#@user.profesor_id = 1	
		@user.nombre = instructor.nombre
		@user.instructor_id = instructor.id  
		if @user.save 
			#session[:user_id] = @user.id 
			redirect_to '/usuario' 
		else	
			@user = User.new
			@instructor = Instructor.all			
			render :new #{}"/signup" 
		end
	end

	private
	def user_params
		params.require(:user).permit(:nombre, :password, :instructor_id)
	end
end
