class CalificacionController < ApplicationController
  def index
  	 @calificacion = Calificacion.all
  	 @cali = Alumno.where("instructor_id =?", current_user.instructor_id)
  	 @materia = Materium.all
  end

  def show
  	# @calificacion = Calificacion.where("alumno_id =?", params[:id])
   
  end

  def create
  end

  def edit
    @califica = Calificacion.find(params[:id])
  end
  def mostrar
  	@califica = Calificacion.where("alumno_id = 1")
  end
end
