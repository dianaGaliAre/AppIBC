class AlumnosController < ApplicationController
  before_action :require_user, only: [:index, :show]
  def index
        @alumno = Alumno.where("instructor_id =?", current_user.instructor_id)
  end

  def new
    @alumno = Alumno.new
    @curso  = Curso.all
    @dium = Dium.all
  end

  def create
    @alumno = Alumno.new(alumno_params)
    @alumno.instructor_id = 1
    if @alumno.save
      redirect_to '/alumnos'
    else
      render 'new'
    end
  end

  def show
    @alumno = Alumno.find(params[:id])
    @curso = Curso.find_by("id =?",@alumno.curso_id)
    #@curso = Curso.find(2) #.where("id =?",@alumno.curso_id)
  end

  def destroy
    @alumno = Alumno.find(params[:id])
    @alumno.destroy
    redirect_to '/alumnos'
  end

  def edit
    @alumno = Alumno.find(params[:id])
    @curso  = Curso.all    
    @dium = Dium.all
  end

  def update
    @alumno = Alumno.find(params[:id])
    if @alumno.update(alumno_params)
      redirect_to '/alumnos'
    else
      render 'edit'
    end
  end

  private
    def alumno_params
      params.require(:alumno).permit(:nombre_a, :app, :apm, :direccion, :fecha_nac, :telefono, :email, :instructor_id, :curso_id, :dium_id)
    end
    
end




